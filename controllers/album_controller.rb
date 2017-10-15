require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/album"

get '/album' do
    @artists = Album.all()
    erb(:index)
end
