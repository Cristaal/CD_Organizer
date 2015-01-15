require('rspec')
require('organizer')


 describe("#organizer") do
    it("returns an album names for an artist") do
      test_artist = Artist.new("The Kinks")
      test_artist.save()
      test_album = Album.new("Lola vs. Powerman")
      test_album.save()
      test_catalogue = Cd.new(test_artist, test_album)
      test_catalogue.save()
      expect((test_catalogue.artist()).name()).to(eq("The Kinks"))
    end
 end

describe("#organizer") do
   it("returns an album names for an album") do
     test_artist = Artist.new("The Kinks")
     test_artist.save()
     test_album = Album.new("Lola vs. Powerman")
     test_album.save()
     test_catalogue = Cd.new(test_artist, test_album)
     test_catalogue.save()
     expect((test_catalogue.album_name()).album_name()).to(eq("Lola vs. Powerman"))
   end
end
