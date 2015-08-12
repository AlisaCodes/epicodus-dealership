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

describe("the dealership bicycle list path", {:type => :feature}) do
  it("takes the user to the unique dealership's bicycle list") do
    visit('/dealerships/1')
    click_link('See Bicycle List')
    expect(page).to have_content("Here are the bikes at the Recycled Cycles dealership:")
  end
end

describe("the dealership bicycle form path", {:type => :feature}) do
  it("takes the user to a form to input a bicycle") do
    visit('/dealerships/1')
    click_link('Add New Bicycle')
    expect(page).to have_content("Add Bicycles to Recycled Cycles!")
  end
end

describe("the add bicycle form to dealership's bicycle list path", {:type => :feature}) do
  it("submits the form and takes user to dealership's bicycle list") do
    visit('/bicycles/1/new')
    fill_in('make', :with => 'Trek')
    fill_in('model', :with => 'Monster')
    fill_in('year', :with => '2013')
    click_button('Add Bike')
    expect(page).to have_content("Trek")
    expect(page).to have_content("Monster")
    expect(page).to have_content("2013")
  end
end
