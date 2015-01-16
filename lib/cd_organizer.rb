class Library
  attr_reader(:album, :artist)
  @@cds = []

  define_method(:initialize) do |attributes|
    @album = attributes.fetch(:album)
    @artist = attributes.fetch(:artist)
    @id = @@cds.length().+(1)
  end


  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@cds
  end

  define_singleton_method(:clear) do
    @@cds = []
  end

  define_singleton_method(:find) do |identification|
    found_album = nil
    @@cds.each() do |cd|
      if cd.id().eql?(identification.to_i())
        found_album = cd
      end
    end
    found_album
  end

  sought_album = "album not found."
  sought_artist = nil
  searched_album = []
  @@cds.each() do |record|
    if record.album() == cd
      sought_album = record.album()
      sought_artist = record.artist()
    end
  end
    searched_album = [sought_album, sought_artist]
    searched_album
  end

  define_method(:save) do
    @@cds.push(self)
  end
