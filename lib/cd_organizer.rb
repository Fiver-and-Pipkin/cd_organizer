class Library
  attr_reader(:album, :artist)
  @@cds = []

  define_method(:initialize) do |attributes|
    @album = attributes.fetch(:album)
    @artist = attributes.fetch(:artist)
  end

    define_singleton_method(:all) do
    @@cds
  end

  define_singleton_method(:clear) do
    @@cds = []
  end

    define_method(:save) do
    @@cds.push(self)
  end

end
