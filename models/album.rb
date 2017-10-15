require_relative "../db/sql_runner"

class Album

    def initialize(id, name, artist_id)
        @id = id
        @name = name
        @artist_id = artist_id
    end

end
