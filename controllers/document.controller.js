// (select title from client c where c.id = d.client_id)

const db = require("./../db");

class DocumentController {
  async getDocument(req, res) {
    const { id } = req.params;
    const result = await db.query(`select * from document where id = $1`, [id]);
    res.json(result.rows[0]);
  }

  async getDocuments(req, res) {
    const { filter, order } = req.body;
    console.log(filter);
    let query = `select * from document`;
    if (filter?.value) {
      query = `${query} where ${filter.column} ${filter.compare} '${filter.value}'`;
      console.log(query);
    }

    if (order?.value) {
      query = `${query} order by ${order.column} ${order.value}`;
    }

    const result = await db.query(query);
    res.json(result.rows);
  }

  async createDocument(req, res) {
    const { date,client_id,service_id } = req.body;
    const result = await db.query(
      `
    INSERT INTO
    document (date, client_id, service_id)
    values ($1,$2,$3)`, [date, +client_id, +service_id]);
    res.send("ok");
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
