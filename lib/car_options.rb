class Options
  @@catalog = [] #class variable
  def initialize(name, price)
    @name = name
    @price = price
    save
  end

  def Options.catalog #calling the class method of catalog
    @@catalog
  end

  def save #save method to shovel the current class instance into the catalog array
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
