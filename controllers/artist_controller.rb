require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/artist"

get '/recordstore/artists' do
    @artists = Artist.all()
    @albums = Album.all()
    erb(:inventory)
end

get '/recordstore/artists/new' do
    @artists = Artist.all()
    erb(:new_artist)
end

post '/recordstore/artists' do
    @artist = Artist.new(params)
    @artist.save()
    erb(:artist_added)
end

post '/recordstore/artists/delete/:id' do
    @artist = Artist.find(params["id"])
    @artist.delete()
    redirect to ('/recordstore/artists')
end

get "/recordstore/artist/:id" do
    redirect to ('/recordstore/albums')
end
