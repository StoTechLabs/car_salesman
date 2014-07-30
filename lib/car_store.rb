

class Vehicle
  def initialize(make, model, year, price)
    @make = make
    @model = model
    @year = year
    @price = price
  end


  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def price
    @price
  end
end

toyota_prius = Vehicle.new("Toyota", "Prius", "2014", "23999")
chevy_camaro = Vehicle.new("Chevrolet", "Camaro", "2014", "45000")

p "You vehicle is a #{chevy_camaro.make} #{chevy_camaro.model}"
