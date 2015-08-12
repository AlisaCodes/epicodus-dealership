require('rspec')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('it returns the name of the dealership') do
      test_dealership = Dealership.new("Recycled Cycles")
      expect(test_dealership.name()).to(eq("Recycled Cycles"))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Recycled Cycles")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#bikes') do
    it('initially returns an empty array of bicycles for the dealership') do
      test_dealership = Dealership.new("Recycled Cycles")
      expect(test_dealership.bikes()).to(eq([]))
    end
  end

  describe('#save') do
    it('add a dealership to the array of saved dealerships') do
      test_dealership = Dealership.new("Recycled Cyles")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('#.all') do
    it('it is empty at first') do
    expect(Dealership.all()).to(eq([]))
    end
  end
end
