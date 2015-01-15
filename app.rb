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

post('/search') do
end
