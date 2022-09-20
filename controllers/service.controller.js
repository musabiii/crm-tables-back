const db = require("./../db");

class ClientController {
  async getService(req, res) {
    const { id } = req.params;
    const result = await db.query(`select * from service where id = $1`, [id]);
    res.status(200).send(result.rows[0]);
  }

  async getServices(req, res) {
    const {
      filterCol,
      filterCompare,
      filterValue,
      sortCol,
      order,
      page = 1,
    } = req.query;

    let query = `select * from service`;

    console.log("filterValue", filterValue);

    let formatFilterValue = filterValue;
    if (filterCompare === "like") formatFilterValue = `%${filterValue}%`;

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

  async createService(req, res) {
    console.log("ClientController ~ req.body", req.body);
    const { title, price, duration } = req.body;
    if (!title || !price || !duration) {
      res.status(400).send("fill all options");
      return;
    }
    console.log("before query \n");
    try {
      const result = await db.query(
        `
      INSERT INTO service (title, price, duration)
      values
      (
          $1,
          $2,
          $3
      );
      `,
        [title, Number(price), String(duration)]
      );
      console.log("result of db", result);

      res.status(200).json(req.body);
    } catch (error) {
      console.log("error of create", error);
      res.status(400).send("");
    }
  }

  async updateService(req, res) {
    console.log("update service");
    const { id } = req.params;
    const { title, price, duration } = req.body;
    console.log(req.body);
    const result = await db.query(
      `update service set title = $1, price = $2, duration=$3 where id = $4`,
      [title, price, duration, id]
    );
    console.log("result of db", result);
    res.status(200).json(req.body);
  }

  async deleteService(req,res) {
    const { id } = req.params;
    try {
      const result = await db.query(`delete from service where id = $1`, [id]);
      res.status(200).send(result);
    } catch (error) {
      res.status(400).send("something wrong");
    }
  }

  async getOptions(req,res) {
    const {
      title,
    } = req.query;
    if (!title) {
      // res.status(200).send(null)
      const query = `select id as value,title as text from service limit 20`;
      const result = await db.query(query);
      res.status(200).send(result.rows);
     return;
    };
    const query = `select id as value,title as text from service where title like '${title}%' limit 20`;
    const result = await db.query(query);
    res.status(200).send(result.rows);
  }
}

module.exports = new ClientController();
