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
end
