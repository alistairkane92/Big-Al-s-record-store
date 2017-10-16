require ("pry-byebug")

require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all
Artist.delete_all


artist1 = Artist.new({"name" => "Michael Jackson"})
artist1.save()

artist2 = Artist.new({"name" => "Miles Davis"})
artist2.save()

artist3 = Artist.new({"name" => "Metallica"})
artist3.save()

album1 = Album.new({"name" => "Thriller", "artist_id" => artist1.id, "quantity" => 40})
album1.save()

album2 = Album.new({"name" => "Kind of Blue", "artist_id" => artist2.id, "quantity" => 25})
album2.save()

album3 = Album.new({"name" => "Random Access Memories", "artist_id" => artist3.id, "quantity" => 15})
album3.save()

album4 = Album.new({"name" => "Discovery", "artist_id" => artist3.id, "quantity" => 5})
album4.save()




binding.pry
nil
