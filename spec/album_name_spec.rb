require('rspec')
require('album_name')


  describe('#album') do
    it("returns the name of an album") do
      Album.clear()
      test_album = Album.new({:album_name => "Lola vs. Powerman"})
      test_album.save()
      expect(test_album.album_name()).to(eq("Lola vs. Powerman"))
    end
 end



  describe('#id') do
    it("returns the id of the album") do
      Album.clear()
      test_album = Album.new({:album_name => "Lola vs. Powerman"})
      test_album.save()
      expect(test_album.id()).to(eq(1))
    end
  end
