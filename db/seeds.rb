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

artist4 = Artist.new({"name" => "The Beatles"})
artist4.save()

artist5 = Artist.new({"name" => "Madonna"})
artist5.save()

artist6 = Artist.new({"name" => "The Smiths"})
artist6.save()

artist7 = Artist.new({"name" => "The Libertines"})
artist7.save()

artist8 = Artist.new({"name" => "Public Enemy"})
artist8.save()

artist9 = Artist.new({"name" => "Kendrick Lamar"})
artist9.save()

artist10 = Artist.new({"name" => "The Rolling Stones"})
artist10.save()

artist11 = Artist.new({"name" => "Queens of the Stone Age"})
artist11.save()

artist12 = Artist.new({"name" => "Prince"})
artist12.save()

artist13 = Artist.new({"name" => "Roxy Music"})
artist13.save()

artist14 = Artist.new({"name" => "Jeff Buckley"})
artist14.save()

artist15 = Artist.new({"name" => "Bruce Springsteen"})
artist15.save()

artist16 = Artist.new({"name" => "Kraftwerk"})
artist16.save()

artist17 = Artist.new({"name" => "The White Stripes"})
artist17.save()

artist18 = Artist.new({"name" => "Green Day"})
artist18.save()

artist19 = Artist.new({"name" => "Nas"})
artist19.save()

artist20 = Artist.new({"name" => "Bob Dylan"})
artist20.save()

artist21 = Artist.new({"name" => "Susan Boyle"})
artist21.save()


album1 = Album.new({"name" => "Thriller", "artist_id" => artist1.id, "quantity" => 40, "genre" => "Pop", "buy_price" => 3, "sell_price" => 9.99, "sold" => 6})
album1.save()

album2 = Album.new({"name" => "Kind of Blue", "artist_id" => artist2.id, "quantity" => 25, "genre" => "Jazz", "buy_price" => 5, "sell_price" => 14.99, "sold" => 3})
album2.save()

album3 = Album.new({"name" => "Random Access Memories", "artist_id" => artist3.id, "quantity" => 15, "genre" => "Funk", "buy_price" => 4, "sell_price" => 12.99, "sold" => 7})
album3.save()

album4 = Album.new({"name" => "Discovery", "artist_id" => artist3.id, "quantity" => 5, "genre" => "Funk", "buy_price" => 6, "sell_price" => 6, "sold" => 3})
album4.save()

album5 = Album.new({"name" => "Revolver", "artist_id" => artist4.id, "quantity" => 20, "genre" => "Pop", "buy_price" => 3, "sell_price" => 6, "sold" => 10})
album5.save()

album6 = Album.new({"name" => "MDNA", "artist_id" => artist5.id, "quantity" => 12, "genre" => "Pop", "buy_price" => 4, "sell_price" => 4.99, "sold" => 6})
album6.save()

album7 = Album.new({"name" => "The Queen is Dead", "artist_id" => artist6.id, "quantity" => 14, "genre" => "Indie", "buy_price" => 4, "sell_price" => 8.99, "sold" => 10})
album7.save()

album8 = Album.new({"name" => "Time for Heroes", "artist_id" => artist7.id, "quantity" => 7, "genre" => "Indie", "buy_price" => 3, "sell_price" => 12.99, "sold" => 5})
album8.save()

album9 = Album.new({"name" => "The Evil Empire of Everything", "artist_id" => artist8.id, "quantity" => 19, "genre" => "Rap", "buy_price" => 5, "sell_price" => 11.99, "sold" => 14})
album9.save()

album10 = Album.new({"name" => "To Pimp a Butterfly", "artist_id" => artist9.id, "quantity" => 9, "genre" => "Rap", "buy_price" => 6, "sell_price" => 14.99, "sold" => 8})
album10.save()

album11 = Album.new({"name" => "Sticky Fingers", "artist_id" => artist10.id, "quantity" => 26, "genre" => "Rock", "buy_price" => 5, "sell_price" => 19.99, "sold" => 2})
album11.save()

album12 = Album.new({"name" => "Songs for the Deaf", "artist_id" => artist11.id, "quantity" => 32, "genre" => "Rock", "buy_price" => 7, "sell_price" => 11.99, "sold" => 10})
album12.save()

album13 = Album.new({"name" => "Purple Rain", "artist_id" => artist12.id, "quantity" => 15, "genre" => "Pop", "buy_price" => 3, "sell_price" => 4.99, "sold" => 15})
album13.save()

album14 = Album.new({"name" => "Siren", "artist_id" => artist13.id, "quantity" => 8, "genre" => "Pop", "buy_price" => 4, "sell_price" => 6, "sold" => 20})
album14.save()

album15 = Album.new({"name" => "Grace", "artist_id" => artist14.id, "quantity" => 4, "genre" => "Pop", "buy_price" => 2, "sell_price" => 6, "sold" => 20})
album15.save()

album16 = Album.new({"name" => "Nebraska", "artist_id" => artist15.id, "quantity" => 22, "genre" => "Rock", "buy_price" => 4, "sell_price" => 8, "sold" => 15})
album16.save()

album17 = Album.new({"name" => "Trans-Europe Express", "artist_id" => artist16.id, "quantity" => 22, "genre" => "Electronic", "buy_price" => 4.99, "sell_price" => 12, "sold" => 4})
album17.save()

album18 = Album.new({"name" => "White Blood Cells", "artist_id" => artist17.id, "quantity" => 11, "genre" => "Rock", "buy_price" => 2, "sell_price" => 11, "sold" => 7})
album18.save()

album19 = Album.new({"name" => "American Idiot", "artist_id" => artist18.id, "quantity" => 12, "genre" => "Rock", "buy_price" => 1, "sell_price" => 2.99, "sold" => 30})
album19.save()

album20 = Album.new({"name" => "Stillmatic", "artist_id" => artist19.id, "quantity" => 15, "genre" => "Pop", "buy_price" => 6, "sell_price" => 5, "sold" => 15})
album20.save()

album21 = Album.new({"name" => "Blood on the Tracks", "artist_id" => artist20.id, "quantity" => 27, "genre" => "Rock", "buy_price" => 3, "sell_price" => 12, "sold" => 15})
album21.save()

album22 = Album.new({"name" => "Oh Mercy", "artist_id" => artist20.id, "quantity" => 8, "genre" => "Rock", "buy_price" => 2, "sell_price" => 10, "sold" => 20})
album22.save()

album23 = Album.new({"name" => "The Time They Are a-Changing", "artist_id" => artist20.id, "quantity" => 7, "genre" => "Rock", "buy_price" => 5, "sell_price" => 10, "sold" => 3})
album23.save()

album24 = Album.new({"name" => "Shot of Love", "artist_id" => artist20.id, "quantity" => 3, "genre" => "Rock", "buy_price" => 4, "sell_price" => 15, "sold" => 1})
album24.save()

album25 = Album.new({"name" => "Icky Thump", "artist_id" => artist17.id, "quantity" => 12, "genre" => "Rock", "buy_price" => 4, "sell_price" => 13, "sold" => 7})
album25.save()

album26 = Album.new({"name" => "Meat is Murder", "artist_id" => artist6.id, "quantity" => 16, "genre" => "Indie", "buy_price" => 6, "sell_price" => 12, "sold" => 4})
album26.save()

album27 = Album.new({"name" => "Sgt Pepper's Lonely Hearts Club Band", "artist_id" => artist4.id, "quantity" => 18, "genre" => "Pop", "buy_price" => 3, "sell_price" => 15, "sold" => 7})
album27.save()

album28 = Album.new({"name" => "I Dreamed A Dream", "artist_id" => artist21.id, "quantity" => 1, "genre" => "Susan Boyle", "buy_price" => 5, "sell_price" => 20, "sold" => 70})
album28.save()




binding.pry
nil
