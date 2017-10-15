require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/album"

get '/recordstore/albums' do
    @albums = Album.all()
    erb(:albums)
end
