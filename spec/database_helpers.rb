# def persisted_data(table:, id:)
#     connection = PG.connect(dbname: 'entry_log')
#     result = connection.query("SELECT * FROM #{table} WHERE id = #{id};")
#     result.first
#   end
  