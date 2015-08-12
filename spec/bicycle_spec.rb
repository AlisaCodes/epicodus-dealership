require('rspec')
require('bicycle')

describe(Bicycle) do
  before() do
    Bicycle.clear()
  end

  describe('#make') do
    it('returns the make of the bicycle') do
      test_bike = Bicycle.new("Trek", "Monster", 2013)
      expect(test_bike.make()).to(eq("Trek"))
    end
  end

  describe('#model') do
    it('returns the model of the bicycle') do
      test_bike = Bicycle.new("Trek", "Monster", 2013)
      expect(test_bike.model()).to(eq("Monster"))
    end
  end

  describe('#year') do
    it('returns the year of the bicycle') do
      test_bike = Bicycle.new("Trek", "Monster", 2013)
      expect(test_bike.year()).to(eq(2013))
    end
  end
end
