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

post '/dealerships' do
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
