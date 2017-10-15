require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/artist"
require_relative "../models/album"

get '/artist' do
    @artists = Artist.all()
    erb(:index)
end
