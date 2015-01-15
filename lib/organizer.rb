class Cd
  attr_reader(:artist, :album_name)
  @@allcds = []
  # attributes = Hash.new()

  define_method(:initialize) do |attributes|
    @artist = attributes.fetch(:artist)
    @album_name = attributes.fetch(:album_name)
  end

  define_singleton_method(:all) do
    @@allcds
  end

  define_method(:save) do
    @@allcds.push(self)
  end

  define_singleton_method(:clear) do
    @@allcds = []
  end

  define_singleton_method(:search_album) do |album_search|
    found_cd = nil
    @@allcds.each do |cd|
      if album_search == ((cd.album_name()).album_name())
        found_cd = cd
      end
    end
    return found_cd
  end

  define_singleton_method(:search_artist) do |artist_search|
    found_artist = nil
    @@allcds.each do |cd_artist|
      if artist_search == ((cd_artist.artist()).name())
        found_artist = cd_artist
      end
    end
    return found_artist
  end
end
