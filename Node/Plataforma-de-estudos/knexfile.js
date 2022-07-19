module.exports = {
  development: {
    client: 'sqlite3',
    connection: {
      filename: 'dev.sqlite3'
    },
    pool: {
      afterCreate: function (connection, cb) {
        connection.run('PRAGMA foreign_keys = ON', cb);
      }
    },
    useNullAsDefault: true,
    migrations: {
      directory: __dirname + '/src/databases/migrations'
    },
    seeds: {
      directory: __dirname + '/src/databases/seeds'
    }
  },
  production: {
    
  }
}