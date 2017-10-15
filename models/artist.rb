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

    def self.select_all()
        sql = "SELECT * FROM artists;"
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
       return albums.map {|student| Album.new(student)}
     end

end
