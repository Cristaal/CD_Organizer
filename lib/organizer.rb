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

  define_singleton_method(:search_album) do |cd_search|
    found_cd = nil
    @@allcds.each do |cd|
      if cd_search == ((cd.album_name()).album_name())
        found_cd = cd
      end
    end
    return found_cd
  end

end
