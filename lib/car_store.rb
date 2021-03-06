class Vehicle
  @@warehouse = [] #class variable

  def Vehicle.clear
    @@warehouse = []
  end

  def initialize(make, model, year, price)
    @make = make #instance variable
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

  def make #accessor method
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
chevrolet_camaro = Vehicle.new("Chevrolet", "Camaro", "2014", 45000)
cooper_mini = Vehicle.new("Cooper", "Mini", "2013", 25000)

# puts Vehicle.list[1]
# p Vehicle.warehouse[2].make
# p "#{warehouse[0].make} #{warehouse[0].model}"
# p "#{warehouse[1].make} #{warehouse[1].model}"


# p "You vehicle is a #{chevy_camaro.make} #{chevy_camaro.model}"
