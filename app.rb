require('sinatra')
require('sinatra/reloader')
require('./lib/bicycle.rb')
require('./lib/dealership.rb')

get("/") do
  erb(:index)
end

get('/dealerships') do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealerships/new') do
  erb(:dealer_form)
end

post('/dealerships') do
  new_dealer = Dealership.new(params.fetch("name"))
  new_dealer.save()
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealerships/:id') do
  @our_dealer = Dealership.find(params.fetch("id").to_i())
  @bikes = @our_dealer.bikes()
  erb(:dealership)
end

get('/bicycles/:id/new') do
  @our_dealer = Dealership.find(params.fetch("id").to_i())
  erb(:bicycle_form)
end

post('/bicycles/:id') do
  @our_dealer = Dealership.find(params.fetch("id").to_i())
  new_bike = Bicycle.new(params.fetch("make"), params.fetch("model"), params.fetch("year"))
  @our_dealer.add_bike(new_bike)
  @bikes = @our_dealer.bikes()
  erb(:bicycles)
end

get('/bicycles/:id') do
  @our_dealer = Dealership.find(params.fetch("id").to_i())
  @bikes = @our_dealer.bikes()
  erb(:bicycles)
end
