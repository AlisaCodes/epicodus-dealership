require('rspec')
require('dealership')

describe(Dealership) do
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

end
