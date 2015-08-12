class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @name = name
    @id = 1
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
end
