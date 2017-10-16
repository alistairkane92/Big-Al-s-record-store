require_relative "./artist"
require_relative "../db/sql_runner"

class Album

    attr_accessor :name, :artist_id, :quantity, :genre
    attr_reader :id

    def initialize(options)
        @id = options["id"].to_i
        @name = options["name"]
        @artist_id = options["artist_id"].to_i
        @quantity = options["quantity"].to_i
        @genre = options["genre"]
        @buy_price = options["buy_price"].to_i
        @sell_price = options["sell_price"].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM albums;"
        values = []
        SqlRunner.run(sql, values)
    end

    def self.all()
        sql = "SELECT * FROM albums;"
        values = []
        results = SqlRunner.run(sql, values)
        return results.map{|result| Album.new(result)}
    end

    def self.find(id)
        sql = "SELECT * FROM albums WHERE id = $1"
        values = [id]
        album = SqlRunner.run( sql, values ).first
        return Album.new( album )
    end

    def save()
        sql = "INSERT INTO albums(name, artist_id, quantity, genre, buy_price, sell_price) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;"
        values = [@name, @artist_id, @quantity, @genre, @buy_price, @sell_price]
        artist_data = SqlRunner.run(sql, values)
        @id = artist_data[0]['id'].to_i
    end

    def update()
        sql = "UPDATE albums SET (name, artist_id, quantity, genre, buy_price, sell_price) = ($1, $2, $3, $4, $5, $6) WHERE id = $7;"
        values = [@name, @artist_id, @quantity, @genre, @buy_price, @sell_price, @id]
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
       result = SqlRunner.run(sql, values).first
       return Artist.new(result)
     end

     def stock_level()
        return "Low" if @quantity <= 5
        return "Medium" if @quantity <= 15
        return "High" if @quantity > 16
    end
end
