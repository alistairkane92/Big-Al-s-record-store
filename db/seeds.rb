require ("pry-byebug")

require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all
Artist.delete_all


artist1 = Artist.new({"name" => "Michael Jackson"})
artist1.save()

album1 = Album.new({"name" => "Thriller", "artist_id" => artist1})
album1.save()

binding.pry
nil
