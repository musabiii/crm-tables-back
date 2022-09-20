// (select title from client c where c.id = d.client_id)

const db = require("./../db");

class DocumentController {
  async getDocument(req, res) {
    const { id } = req.params;
    const result = await db.query(`
    select *, (select title from client c where c.id = d.client_id) client_title,
    (select title from service s where s.id = d.service_id) service_title
    from document d
    where id = $1`, [id]);
    res.status(200).json(result.rows[0]);
  }

  async getDocuments(req, res) {
    // const { filter, order } = req.body;

    const {
      filterCol,
      filterCompare,
      filterValue,
      sortCol,
      order,
      page = 1,
    } = req.query;


    let formatFilterValue = filterValue;
    if (filterCompare === 'like') formatFilterValue = `%${filterValue}%`

    let subqueryClient = `select title from client c where c.id = d.client_id`;

    if (filterValue && filterCol === 'client_title') {
      subqueryClient = `${subqueryClient} and ${filterCol} ${filterCompare} '${filterValue}'`;
    }

    let subqueryService = `select title from service s where s.id = d.service_id`;

    if (filterValue && filterCol === 'service_title') {
      subqueryService = `${subqueryService} and ${filterCol} ${filterCompare} '${filterValue}'`;
    }

    let query = `
    select *, (${subqueryClient}) client_title,
    (${subqueryService}) service_title
    from document d
    `;

    if (filterValue && (filterCol === 'id' || filterCol === 'date')) {
      query = `${query} where ${filterCol} ${filterCompare} '${filterValue}'`;
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

    const result = await db.query(
      `
    INSERT INTO
    document (date, client_id, service_id)
    values ($1,$2,$3)`,
      [date, +client_id, +service_id]
    );
    res.status(200).send("ok");
  }

  async updateDocument(req, res) {
    const { id } = req.params;
    const { date, client_id, service_id } = req.body;
    const result = await db.query(
      `update document set date = $1, client_id = $2, service_id=$3 where id = $4`,
      [date, client_id, service_id, id]
    );
    res.send("ok");
  }
}

module.exports = new DocumentController();
