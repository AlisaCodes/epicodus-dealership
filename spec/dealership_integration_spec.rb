require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the dealership path", {:type => :feature}) do
  it("directs the user to a links page or a post page") do
    visit('/')
    click_link("See Dealership List")
    expect(page).to have_content("Dealerships")
  end
end

describe("the dealer form path", {:type => :feature}) do
  it("takes the user to the dealer form") do
    visit('/')
    click_link("Add New Dealership")
    expect(page).to have_content("Add Dealerships!")
  end
end

describe("the dealer form to dealerships path", {:type => :feature}) do
  it("submits the form and takes user to dealerships list") do
    visit('/dealerships/new')
    fill_in('name', :with => 'Recycled Cycles')
    click_button('Add Dealership')
    expect(page).to have_content("Recycled Cycles")
  end
end

describe("the dealership path", {:type => :feature}) do
  it("takes the user to the unique dealership") do
    visit('/dealerships')
    click_link('Recycled Cycles')
    expect(page).to have_content("Welcome to Recycled Cycles!")
  end
end
