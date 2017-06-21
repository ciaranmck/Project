require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/album.rb' )

get '/albums' do
  @albums = Album.all()
  erb ( :"albums/index" )
end

get '/albums/new' do
  @artists = Artist.all()
  erb ( :"albums/new")
end

post '/albums/create' do
  album = Album.new(params)
  album.save
  erb ( :"albums/create")
end