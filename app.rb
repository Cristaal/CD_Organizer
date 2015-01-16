require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/*/**.rb')
require ('./lib/organizer')
require ('./lib/artist')
require ('./lib/album_name')
require ('pry')

Cd.clear()

get ('/') do
  erb(:form)
end

post('/submit') do
  artist = Artist.new({:name => params.fetch('artist')})
  artist.save()
  album = Album.new({:album_name => params.fetch('album')})
  album.save()
  cd = Cd.new({:artist => artist, :album_name => album})
  cd.save()
  redirect ('/')
end

get('/artist_search') do
  @cd = Cd.search_artist(params.fetch("artist_search"))
  @artist = (@cd.artist().name())
  @album = (@cd.album_name().album_name())
  erb(:organizer)
end

get('/album_search') do
   @cd = Cd.search_album(params.fetch("album_search"))
   @artist = (@cd.artist().name())
   @album = (@cd.album_name().album_name())
   erb(:organizer)
end
