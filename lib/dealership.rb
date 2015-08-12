class Dealership
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
end
