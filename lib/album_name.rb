class Album
  attr_reader(:album_name, :id)
  @@album_names = []

  define_method(:initialize) do |attributes|
    @album_name = attributes.fetch(:album_name)
    @id = @@album_names.length().+(1)
  end

  define_singleton_method(:all) do
    @@album_names
  end

  define_method(:save) do
    @@album_names.push(self)
  end

  define_singleton_method(:clear) do
    @@album_names=[]
  end

end
