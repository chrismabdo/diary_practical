require_relative './lib/database_connection.rb'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('entry_log')
else
  DatabaseConnection.setup('entry_log')
end