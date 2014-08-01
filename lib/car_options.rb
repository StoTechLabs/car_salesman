class Options
  @@catalog = [] #class variable

  def Options.clear
    @@catalog = []
  end

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

  def Options.find_by_name(input)
    Options.catalog.each do |i|
      if input == i.name
        @found_item = i.name
        return i
      end
    end
    false
  end

  def Options.delete(input)
    Options.catalog.delete(input)
  end

end

rims = Options.new("Rims", 1000) #instance of the class of Options
sunroof = Options.new("Sunroof", 500)
spoiler = Options.new("Spoiler", 250)
stereo = Options.new("Premium Stereo", 1500)
nav = Options.new("Navigation System", 500)
