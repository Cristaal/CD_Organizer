require ('rspec')
require ('artist')


  describe('#artist') do
    it("returns the name of the artist") do
      test_artist = Artist.new("The Kinks")
      test_artist.save()
      expect(test_artist.name()).to(eq("The Kinks"))
    end
  end

  describe('#id') do
    it("returns the id of the artist") do
      Artist.clear()
      test_artist = Artist.new("The Kinks")
      test_artist.save()
      expect(test_artist.id()).to(eq(1))
    end
  end
