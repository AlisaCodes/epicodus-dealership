require('rspec')
require('dealership')

describe(Dealership) do
  describe('#name') do
    it('it returns the name of the dealership') do
      test_dealership = Dealership.new("Recycled Cycles")
      expect(test_dealership.name()).to(eq("Recycled Cycles"))
    end
  end
end
