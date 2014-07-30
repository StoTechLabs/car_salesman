class Options
  @@catalog = [] #class variable
  def initialize(name, price)
    @name = name
    @price = price
    save
  end

  def Options.catalog #calling the class method of warehouse
    @@catalog
  end

  def save #save method to shovel the current class instance into the warehouse array
    @@catalog << self
  end

  def name
    @name
  end

  def price
    @price
  end
end




rims = Options.new("Rims", 1000)
sunroof = Options.new("Sunroof", 500)
spoiler = Options.new("Spoiler", 250)
stereo = Options.new("Premium Stereo", 1500)
nav = Options.new("Navigation System", 500)


# p black_rims
# p Options.catalog[0].name
# puts Vehicle.list[1]
# p Vehicle.warehouse[0].make
# p "#{warehouse[0].make} #{warehouse[0].model}"
# p "#{warehouse[1].make} #{warehouse[1].model}"


# p "You vehicle is a #{chevy_camaro.make} #{chevy_camaro.model}"
