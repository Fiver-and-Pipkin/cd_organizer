require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/cd_organizer')
require('pry')
# require('./lib/definition')

get('/') do
  @cds = Library.all()
  erb(:index)
end

post('/cd_results') do
  album = params.fetch("album")
  artist = params.fetch("artist")
  Library.new({:album => "Greatest Hits", :artist => "The Doors"})
  @cds = Library.all()
  erb(:cd_results)
end

post('/cd_search_results/') do
  album = params.fetch("album")
  artist = params.fetch("artist")
  Library.new({:album => "Greatest Hits", :artist => "The Doors"})
  @cds = Library.all()
  erb(:cd_results)
end
