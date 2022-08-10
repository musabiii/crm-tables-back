const Pool = require('pg').Pool;

const pool = new Pool({
    user:"postgres",
    password:'super',
    host:"localhost",
    port:5432,
    database:"crm_tables"
})

module.exports = pool;