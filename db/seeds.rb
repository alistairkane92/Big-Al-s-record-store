require ("pry-byebug")

require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({"name" => "Michael Jackson"})
artist1.save()

artist2 = Artist.new({"name" => "Miles Davis"})
artist2.save()

artist3 = Artist.new({"name" => "Daft Punk"})
artist3.save()

album1 = Album.new({"name" => "Thriller", "artist_id" => artist1.id, "quantity" => 40, "genre" => "Pop", "buy_price" => 5, "sell_price" => 10, "sold" => 10})
album1.save()

album2 = Album.new({"name" => "Kind of Blue", "artist_id" => artist2.id, "quantity" => 25, "genre" => "Jazz", "buy_price" => 2, "sell_price" => 15, "sold" => 3})
album2.save()

album3 = Album.new({"name" => "Random Access Memories", "artist_id" => artist3.id, "quantity" => 15, "genre" => "Funk", "buy_price" => 3, "sell_price" => 5, "sold" => 4})
album3.save()

album4 = Album.new({"name" => "Discovery", "artist_id" => artist3.id, "quantity" => 5, "genre" => "Funk", "buy_price" => 4, "sell_price" => 25, "sold" => 13})
album4.save()


binding.pry
nil
