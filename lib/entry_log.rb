require 'pg'
require_relative 'database_connection'

class EntryLog
attr_reader :id
attr_reader :title
attr_reader :body
    def initialize(id:, title:, body:)
        @id = id
        @title = title
        @body = body
    end
    
    def self.all
        @database_connection = PG.connect(dbname: 'entry_log')
        entry = @database_connection.exec("SELECT * FROM entries;")
        entry.map do |entry|
            EntryLog.new(id: entry['id'], title: entry['title'], body: entry['body'])
        end
    end

    def self.add(title:, body:)
        @database_connection = PG.connect(dbname: 'entry_log')
        result = @database_connection.exec("INSERT INTO entries (title, body) VALUES('#{title}', '#{body}') RETURNING id, title, body;")
        EntryLog.new(id: result[0]['id'], title: result[0]['title'], body: result[0]['body'] )
    end
end