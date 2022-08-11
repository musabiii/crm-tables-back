const db = require("./../db");

class ServiceController {
  async getService(req, res) {
    const { id } = req.params;
    const result = await db.query(`select * from service where id = $1`, [id]);
    res.json(result.rows);
  }

  async getServices(req, res) {
    const { filter, order } = req.body;
    console.log(filter);
    let query = `select * from service`;
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

  async createService(req, res) {
    const { title, inn, phone, mail, address } = req.body;
    const result = await db.query(
      `
    INSERT INTO
    service (title, price, duration)
    values
    (
        $1,
        $2,
        $3,
        $4,
        $5
    );
    `,
      [title, price, duration]
    );
    res.send("ok");
  }

  async updateService(req, res) {
    const { id } = req.params;
    const {title, price, duration } = req.body;
    const result = await db.query(
      `update service set title = $1, price = $2, duration=$3 where id = $4`,
      [title, price, duration , id]
    );
    res.send("ok");
  }
}

module.exports = new ServiceController();
