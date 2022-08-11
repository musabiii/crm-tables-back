const Pool = require("pg").Pool;

const pool = new Pool({
  user: process.env.POSTGRES_USER ?? "postgres",
  password: process.env.POSTGRES_PASSWORD ?? "super",
  host: process.env.POSTGRES_HOST ?? "localhost",
  port: process.env.POSTGRES_PORT ?? 5432,
  database: process.env.POSTGRES_DB ?? "crm_tables",
});

module.exports = pool;
