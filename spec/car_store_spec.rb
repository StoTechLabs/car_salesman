require 'rspec'
require 'car_store'
require 'car_options'

describe Vehicle do
  it 'initializes a Vehicle class with its properties' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    test_vehicle.should be_an_instance_of Vehicle
  end

  it 'will provide properties when they are called directly' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    test_vehicle.make.should eq ("Toyota")
  end

  it 'initializes a warehouse class variable and make the vehicle object properties accessible' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    Vehicle.warehouse[0].should be_an_instance_of Vehicle
  end
end

describe Options do
  it 'initializes a Options class with its properties' do
    test_options = Options.new("Rims", 1000)
    test_options.should be_an_instance_of Options
  end

  it 'will provide properties when they are called directly' do
    test_options = Options.new("Rims", 1000)
    test_options.name.should eq ("Rims")
  end

  it 'initializes a catalog class variable and make the Options object properties accessible' do
    test_options = Options.new("Rims", 1000)
    Options.catalog[0].should be_an_instance_of Options
  end
end
