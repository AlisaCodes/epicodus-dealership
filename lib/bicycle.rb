class Bicycle
  @@bicycles = []

  define_method(:initialize) do |make, bike_model, year|
    @make = make
    @bike_model = bike_model
    @year = year

  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @bike_model
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:clear) do
    @@bicycles.clear()
  end
end
