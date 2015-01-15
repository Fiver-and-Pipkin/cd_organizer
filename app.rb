require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/cd_organizer')
# require('./lib/definition')

# get('/used_cars_form') do
#   @title = "Used Cars"
#   @vehicles = Vehicle.all()
#   erb(:used_cars_form)
# end
#
# post('/vehicle') do
#   @title = "Used Cars"
#   make = params.fetch("make")
#   model = params.fetch("model")
#   year = params.fetch("year")
#   vehicle = Vehicle.new(make, model, year)
#   vehicle.save()
#   @vehicles = Vehicle.all()
#   erb(:used_cars_form)
# end
