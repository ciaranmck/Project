require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('controllers/artist_controller')
require_relative('controllers/album_controller')

# INDEX
get '/' do
  erb(:index)
end

get '/inventory' do
  @albums = Album.all()
  erb(:inventory)
end

# get '/albums' do
#   @albums = Album.all
#   erb (:inventory)
# end

# get '/artists' do
#   @artists = Artist.all
#   erb(:"artist/index")
# end

# get '/artist/new' do
#   @artists = Artist.all
#   erb(:new_artist)
# end

# post '/inventory' do
#   @artist = Artist.new(params)
#   @artist.save
#   redirect to '/albums'
# end

# get '/album/new' do
#   @artists = Artist.all
#   erb(:new_album)
# end

# post '/album' do
#   @album = Album.new(params)
#   @album.save
#   redirect to '/albums'
# end


# get '/order' do
#   @albums = Album.all
#   @artists = Artist.all
#   erb (:order)
# end

# post '/order/album' do
#   @albums = Album.all
#   erb (:order)


