class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    # every Dealership has these things:
    @name = name
    @id = @@dealerships.length() + 1
    @bikes = []
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:bikes) do
    @bikes
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships.clear()
  end

  define_singleton_method(:find) do |dealer_id|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id == dealer_id
        found_dealership = dealership
      end
    end
    found_dealership
  end
end
