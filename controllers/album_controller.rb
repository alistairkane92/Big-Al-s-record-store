require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/album"

get '/recordstore/albums' do
    @artists = Artist.all()
    @albums = Album.all()
    erb(:finances)
end

get '/recordstore/album/new' do
    @artists = Artist.all()
    @albums = Album.all()
    erb(:new_album)
end

get '/recordstore/album/update/:id' do
    @album = Album.find(params["id"].to_i)
    erb(:update_album)
end

post '/recordstore/albums' do
    @album = Album.new(params)
    @album.save()
    erb(:album_added)
end

post '/recordstore/albums/delete/:id' do
    @album = Album.find(params['id'])
    @album.delete()
    redirect to ('/recordstore/albums')
end

post '/recordstore/albums/update/:id' do
    @album = Album.new(params)
    @album.update()
    redirect to("/recordstore/albums")
end
