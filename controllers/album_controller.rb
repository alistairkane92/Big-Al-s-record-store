require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/album"

get '/recordstore/albums' do
    @artists = Artist.all()
    @albums = Album.all()
    erb(:albums)
end

get '/recordstore/album/new' do
    @artists = Artist.all()
    @albums = Album.all()
    erb(:new_album)
end

post '/recordstore/albums' do
    @albums = Album.new(params)
    @albums.save()
    erb(:album_added)
end
