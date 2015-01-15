class Cd
  attr_reader(:artist, :album_name)
  @@allcds = []
  # attributes = Hash.new()

  define_method(:initialize) do |artist, album_name|
    @artist = artist
    @album_name = album_name
    # @artist = attributes.fetch(:artist)
    # @album_name = attributes.fetch(:album_name)
  end

  define_singleton_method(:all) do
    @@allcds
  end

  define_method(:save) do
    @@allcds.push(self)
  end

  define_method(:clear) do
    @@allcds = []
  end

end
