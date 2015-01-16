require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/*/**.rb')
require ('./lib/organizer')
require ('./lib/artist')
require ('./lib/album_name')
require ('pry')

get ('/') do
  erb(:form)
end

post('/submit') do
  artist = Artist.new(params.fetch('artist'))
  artist.save()
  album = Album.new(params.fetch('album'))
  album.save()
  cd = Cd.new(artist, album)
  cd.save()
  redirect ('/')
end

get('/artist_search') do
  @cd = Cd.search_artist("search_artist")
  @artist = (@cd.artist().name())
  @album = (@cd.album_name().album_name())
  erb(:organizer)
end

get('/album_search') do
   @cd = Cd.search_album("album_search")
   @artist = (@cd.artist().name())
   @album = (@cd.album_name().album_name())
   erb(:organizer)
end
