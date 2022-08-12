const db = require("./../db");

class ClientController {
  async getClient(req, res) {
    const { id } = req.params;
    const result = await db.query(`select * from client where id = $1`, [id]);
    res.json(result.rows[0]);
  }

  async getClients(req, res) {
    const { filter, order } = req.body;
    console.log(filter);
    let query = `select * from client`;
    if (filter?.value) {
      query = `${query} where ${filter.column} ${filter.compare} '${filter.value}'`;
      console.log(query);
    }

    if (order?.value) {
      query = `${query} order by ${order.column} ${order.value}`;
    }

    const result = await db.query(query);
    res.status(200).json(result.rows);
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
    const { id } = req.params;
    const { title, inn, phone, mail, address } = req.body;
    const result = await db.query(
      `update client set title = $1, inn = $2, phone=$3, mail=$4, address=$5 where id = $6`,
      [title, inn, phone, mail, address, id]
    );
    res.send("ok");
  }
}

module.exports = new ClientController();
