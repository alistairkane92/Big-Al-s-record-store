require_relative "./artist"
require_relative "../db/sql_runner"

class Album

    attr_accessor :name, :artist_id, :quantity, :genre, :buy_price, :sell_price, :sold
    attr_reader :id

    def initialize(options)
        @id = options["id"].to_i
        @name = options["name"]
        @artist_id = options["artist_id"].to_i
        @quantity = options["quantity"].to_i
        @genre = options["genre"]
        @buy_price = options["buy_price"].to_i
        @sell_price = options["sell_price"].to_i
        @sold = options["sold"].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM albums;"
        values = []
        SqlRunner.run(sql, values)
    end

    def self.all()
        sql = "SELECT * FROM albums ORDER BY quantity;"
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
        sql = "INSERT INTO albums(name, artist_id, quantity, genre, buy_price, sell_price, sold) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id;"
        values = [@name, @artist_id, @quantity, @genre, @buy_price, @sell_price, @sold]
        artist_data = SqlRunner.run(sql, values)
        @id = artist_data[0]['id'].to_i
    end

    def update()
        sql = "UPDATE albums SET (name, artist_id, quantity, genre, buy_price, sell_price, sold) = ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8;"
        values = [@name, @artist_id, @quantity, @genre, @buy_price, @sell_price, @sold, @id]
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
        return "None" if @quantity == 0
        return "Low" if @quantity <= 5
        return "Medium" if @quantity <= 15
        return "High" if @quantity >= 16
    end

    def total_sell_amount()
        gross_profit = @sold * @sell_price
        return gross_profit
    end

    def total_buying_price()
        total = @buy_price * @quantity
        return total
    end

    def margin()
        margin = total_sell_amount - total_buying_price
        return margin
    end
end
