



class Vehicle
  @@warehouse = [] #class variable
  def initialize(make, model, year, price)
    @make = make
    @model = model
    @year = year
    @price = price
    save
  end

  def Vehicle.warehouse #calling the class method of warehouse
    @@warehouse
  end

  def save #save method to shovel the current class instance into the warehouse array
    @@warehouse << self
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

toyota_prius = Vehicle.new("Toyota", "Prius", "2014", 23999)
chevy_camaro = Vehicle.new("Chevrolet", "Camaro", "2014", 45000)
mini_cooper = Vehicle.new("Cooper", "Mini", "2013", 25000)

p Vehicle.warehouse[0]
# p "#{warehouse[0].make} #{warehouse[0].model}"
# p "#{warehouse[1].make} #{warehouse[1].model}"


# p "You vehicle is a #{chevy_camaro.make} #{chevy_camaro.model}"
