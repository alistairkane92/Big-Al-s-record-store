require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('models/artist.rb')
require_relative('models/album.rb')

require_relative('controllers/album_controller')
require_relative('controllers/artist_controller')

get '/recordstore' do
  erb( :index )
end
