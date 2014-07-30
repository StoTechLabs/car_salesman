require 'rspec'
require 'car_store'

describe Vehicle do
  it 'initializes a Vehicle class with its properties' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    test_vehicle.should be_an_instance_of Vehicle
  end

  it 'will provide properties when they are called directly' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    test_vehicle.make.should eq ("Toyota")
  end

  it 'initializes a Warehouse class variable and make the vehicle object properties accessible' do
    test_vehicle = Vehicle.new("Toyota","Prius","2014","23999")
    Vehicle.warehouse[0].should be_an_instance_of Vehicle
  end
end
