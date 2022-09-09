const db = require("./../db");

class ClientController {

  async getClient(req, res) {
    const { id } = req.params;
    const result = await db.query(`select * from client where id = $1`, [id]);
    res.status(200).send(result.rows[0]);
  }

  async getClients(req, res) {
    const {
      filterCol,
      filterCompare,
      filterValue,
      sortCol,
      order,
      page = 1,
    } = req.query;


    let query = `select * from client`;

    console.log("filterValue", filterValue);

    let formatFilterValue = filterValue;
    if (filterCompare === 'like') formatFilterValue = `%${filterValue}%`

    if (filterValue) {
      query = `${query} where ${filterCol} ${filterCompare} '${formatFilterValue}'`;
    }

    if (order) {
      query = `${query} order by ${sortCol} ${order}`;
    }

    const perPage = 20;
    const offset = (page - 1) * perPage;

    query = `${query} offset ${offset} limit ${perPage}`;
    console.log("query", query);
    const result = await db.query(query);

    res.send(result.rows);
  }

  async createClient(req, res) {
    const { title, inn, phone, mail, address } = req.body;
    const result = await db.query(
      `
    INSERT INTO
    client (title, inn, phone, mail, address)
    values
    (
        $1,
        $2,
        $3,
        $4,
        $5
    );
    `,
      [title, inn, phone, mail, address]
    );
    res.send("ok");
  }

  async updateClient(req, res) {
    console.log('update client')
    const { id } = req.params;
    const { title, inn, phone, mail, address } = req.body;
    console.log(req.body)
    const result = await db.query(
      `update client set title = $1, inn = $2, phone=$3, mail=$4, address=$5 where id = $6`,
      [title, inn, phone, mail, address, id]
    );
    console.log('result of db',result)
    res.status(200).json(req.body);
    // res.send("ok");

  }
}

module.exports = new ClientController();
