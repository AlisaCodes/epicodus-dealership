class Bicycle
  define_method(:initialize) do |make, bike_model, year|
    @make = make
    @bike_model = bike_model
    @year = year
  end
end
