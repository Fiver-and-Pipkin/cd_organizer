require('cd_organizer')
# require('word')
# require('definition')
require('rspec')
require('pry')

describe(Library) do
  before() do
    Library.clear()
  end



  describe('#album') do
    it("returns the name of the album") do
    test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
    test_album.save()
    expect(test_album.album()).to eq("Greatest Hits")
    end
  end

  describe('#artist') do
    it("returns the name of the artist") do
      test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
      test_album.save()
      expect(test_album.artist()).to eq("The Doors")
  end
end

  describe('#id') do
    it("returns the id of the album") do
      test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
      expect(test_album.id()).to eq(1)
    end
  end

  describe('#save') do
    it("adds an album to the array of saved albums") do
    test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
    test_album.save()
    expect(Library.all()).to eq([test_album])
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Library.all()).to eq([])
    end
  end

  describe('.clear') do
    it("empties out the array of saved albums") do
      Library.new({:album => "Greatest Hits", :artist => "The Doors"}).save()
      Library.clear()
      expect(Library.all()).to eq([])
    end
  end

  describe('.find') do
    it("returns a cd by its id number") do
      test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
      test_album.save()
      test_album2 = Library.new({:album => "The White Album", :artist => "The Beatles"})
      test_album2.save()
      expect(Library.find(test_album.id())).to eq(test_album)
    end
  end

  describe(".search") do
  it("returns the Album name and Artist name") do
    test_album2 = Library.new({:album => "The White Album", :artist => "The Beatles"})
    test_album2.save()
    test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
    test_album.save()
    expect(Library.search("Greatest Hits")).to(eq([test_album.album(),test_album.artist()]))
  end
end

  # describe(".search") do
  # it("returns the Album name and Artist name") do
  #   test_album2 = Library.new({:album => "The White Album", :artist => "The Beatles"})
  #   test_album2.save()
  #   test_album = Library.new({:album => "Greatest Hits", :artist => "The Doors"})
  #   test_album.save()
  #   expect(Library.search("The Doors")).to(eq([test_album.album(),test_album.artist()]))
  #   end
  # end
end
