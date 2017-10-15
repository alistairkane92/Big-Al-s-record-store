require "sinatra"
require "sinatra/contrib/all"

require_relative "../models/artist"

get '/artist' do
    @artists = Artist.all()
    erb(:index)
end
