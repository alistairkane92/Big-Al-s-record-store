require_relative "../db/sql_runner"
require_relative "./album"

class Artist

    attr_accessor :name
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i
        @name = options['name']
    end

    def self.delete_all()
        sql = "DELETE FROM artists;"
        values = []
        SqlRunner.run(sql, values)
    end

    def save()
        sql = "INSERT INTO artists(name) VALUES ($1) RETURNING id;"
        values = [@name]
        artist_data = SqlRunner.run(sql, values)
        @id = artist_data.first()['id'].to_i
    end




end
