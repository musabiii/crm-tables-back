// (select title from client c where c.id = d.client_id)

const db = require("./../db");

class DocumentController {
  async getDocument(req, res) {
    const { id } = req.params;
    const result = await db.query(
      `
    select *, (select title from client c where c.id = d.client_id) client_title,
    (select title from service s where s.id = d.service_id) service_title
    from document d
    where id = $1`,
      [id]
    );
    res.status(200).json(result.rows[0]);
  }

  async getDocuments(req, res) {
    // const { filter, order } = req.body;

    let {
      filterCol,
      filterCompare,
      filterValue,
      sortCol,
      order,
      page = 1,
    } = req.query;

    let formatFilterValue = filterValue;
    if (filterCompare === "like") formatFilterValue = `%${filterValue}%`;


    let query = `
    select d.*, c.title client_title,s.title service_title
    from document d LEFT JOIN client c on d.client_id=c.id left join service s on d.service_id = s.id`

    if (filterCol==='client_title') {
      filterCol = 'c.title'
    } else if (filterCol==='service_title') {
      filterCol = 's.title'
    } else {
      filterCol = 'd.'+filterCol;
    }

    if (sortCol==='client_title') {
      sortCol = 'c.title'
    } else if (sortCol==='service_title') {
      sortCol = 's.title'
    } else {
      sortCol = 'd.'+sortCol;
    }

    // if (filterValue && (filterCol === "id" || filterCol === "date")) {
    if (filterValue) {
      query = `${query} where CAST(${filterCol} AS TEXT) ${filterCompare} '${formatFilterValue}'`;
      console.log(query);
    }

    if (order) {
      query = `${query} order by ${sortCol} ${order}`;
    }

    const perPage = 20;
    const offset = (page - 1) * perPage;
    query = `${query} offset ${offset} limit ${perPage}`;

    const result = await db.query(query);
    res.status(200).json(result.rows);
  }

  async createDocument(req, res) {
    const { date, client_id, service_id } = req.body;

    if (!date || !client_id || !service_id) {
      res.status(400).send("fill all options");
      return;
    }

    try {
      const result = await db.query(
        `
          INSERT INTO
          document (date, client_id, service_id)
          values ($1,$2,$3)`,
        [date, +client_id, +service_id]
      );
      res.status(200).send(req.body);
    } catch (error) {
      res.status(400).send("error");
    }
  }

  async updateDocument(req, res) {
    const { id } = req.params;
    const { date, client_id, service_id } = req.body;

    try {
      const result = await db.query(
        `update document set date = $1, client_id = $2, service_id=$3 where id = $4`,
        [date, client_id, service_id, id]
      );
      res.status(200).json(req.body);
    } catch (error) {
      res.status(400).send("error");
    }
  }

  async deleteDocument(req, res) {
    const { id } = req.params;
    try {
      const result = await db.query(`delete from document where id = $1`, [id]);
      res.status(200).send(result);
    } catch (error) {
      res.status(400).send("something wrong");
    }
  }
}

module.exports = new DocumentController();
