const mssql = require('mssql')
const pools = new Map();

module.exports = {
    configSingle: {
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        server: "172.27.144.1",
        database: "esencialVerde",
        pool: {
            max: 1,
            min: 1,
            idleTimeoutMillis: 30000,
        },
        options: {
            trustServerCertificate: true,
        }
    },
    configPool: {
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        server: "172.27.144.1",
        database: "esencialVerde",
        pool: {
            max: 10,
            min: 5,
            idleTimeoutMillis: 30000,
        },
        options: {
            trustServerCertificate: true,
        }
    },
 /**
  * Get or create a pool. If a pool doesn't exist the config must be provided.
  * If the pool does exist the config is ignored (even if it was different to the one provided
  * when creating the pool)
  *
  * @param {string} name
  * @param {{}} [config]
  * @return {Promise.<mssql.ConnectionPool>}
  */
 get: (name, config) => {
  if (!pools.has(name)) {
   if (!config) {
    throw new Error('Pool does not exist');
   }
   const pool = new mssql.ConnectionPool(config);
   // automatically remove the pool from the cache if `pool.close()` is called
   const close = pool.close.bind(pool);
   pool.close = (...args) => {
    pools.delete(name);
    return close(...args);
   }
   pools.set(name, pool.connect());
  }
  return pools.get(name);
 },
 /**  
  * Closes all the pools and removes them from the store
  *
  * @return {Promise<mssql.ConnectionPool[]>}
  */
 closeAll: () => Promise.all(Array.from(pools.values()).map((connect) => {
  return connect.then((pool) => pool.close());
 })),
};