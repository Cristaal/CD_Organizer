class Artist
  attr_reader(:name, :id)
  @@allnames=[]


  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@allnames.length().+(1)
  end

  define_singleton_method(:all) do
    @@allnames
  end

  define_method(:save) do
    @@allnames.push(self)
  end

  define_singleton_method(:clear) do
    @@allnames = []
  end

end
