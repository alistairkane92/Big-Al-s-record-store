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

    def self.all()
        sql = "SELECT * FROM artists ORDER BY name;"
        values = []
        results = SqlRunner.run(sql, values)
        return results.map{|result| Artist.new(result)}
    end

    def save()
        sql = "INSERT INTO artists(name) VALUES ($1) RETURNING id;"
        values = [@name]
        artist_data = SqlRunner.run(sql, values)
        @id = artist_data.first()['id'].to_i
    end

    def update()
        sql = "UPDATE artists SET (name) = ($1) WHERE id = $2;"
        values = [@name, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM artists WHERE id = $1;"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def albums()
       sql = "SELECT albums.* FROM albums WHERE artist_id = $1;"
       values = [@id]
       albums = SqlRunner.run(sql, values)
       albums.map {|album| Album.new(album)}
    end

    def self.find(id)
        sql = "SELECT * FROM artists WHERE id = $1"
        values = [id]
        artist = SqlRunner.run( sql, values )
        return Artist.new( artist.first )
    end

end
