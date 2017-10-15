require_relative "./artist"
require_relative "../db/sql_runner"

class Album

    attr_accessor :name, :artist_id, :quantity
    attr_reader :id

    def initialize(options)
        @id = options["id"].to_i
        @name = options["name"]
        @artist_id = options["artist_id"].to_i
        @quantity = options["quantity"].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM albums;"
        values = []
        SqlRunner.run(sql, values)
    end

    def self.select_all()
        sql = "SELECT * FROM albums;"
        values = []
        results = SqlRunner.run(sql, values)
        return results.map{|result| Album.new(result)}
    end

    def save()
        sql = "INSERT INTO albums(name, artist_id, quantity) VALUES ($1, $2, $3) RETURNING id;"
        values = [@name, @artist_id, @quantity]
        artist_data = SqlRunner.run(sql, values)
        @id = artist_data[0]['id'].to_i
    end

    def update()
        sql = "UPDATE albums SET (name, artist_id, quantity) = ($1, $2, $3) WHERE id = $4;"
        values = [@name, @artist_id, @quantity, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM albums WHERE id = $1;"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def artist()
       sql = "SELECT * FROM artists WHERE id = $1;"
       values = [@artist_id]
       result = SqlRunner.run(sql, values)
       artist_data = result.first()
       return Artist.new(artist_data)
     end

end
