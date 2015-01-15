require('rspec')
require('organizer')
require('artist')
require('album_name')


describe("#organizer") do
  describe('#artist') do
    it("returns an album name for an artist") do
     test_artist = Artist.new({:name => "The Kinks"})
     test_artist.save()
     test_album = Album.new({:album_name => "Lola vs. Powerman"})
     test_album.save()
     test_catalogue = Cd.new({:artist => test_artist, :album_name => test_album})
     test_catalogue.save()
     expect(test_catalogue.artist().name()).to(eq("The Kinks"))
    end
  end
end

describe("#organizer") do
   it("returns an album names for an album") do
     test_artist = Artist.new({:name => "The Kinks"})
     test_artist.save()
     test_album = Album.new({:album_name => "Lola vs. Powerman"})
     test_album.save()
     test_catalogue = Cd.new({:artist => test_artist, :album_name => test_album})
     test_catalogue.save()
     expect((test_catalogue.album_name()).album_name()).to(eq("Lola vs. Powerman"))
   end
end

describe ("#search_album") do
  it("searches for an album and returns it is found") do
    test_artist = Artist.new({:name => "The Kinks"})
    test_artist.save()
    test_album = Album.new({:album_name => "Lola vs. Powerman"})
    test_album.save()
    test_catalogue = Cd.new({:artist => test_artist, :album_name => test_album})
    test_catalogue.save()
    expect(Cd.search_album("Lola vs. Powerman")).to(eq(test_catalogue))
  end
end
