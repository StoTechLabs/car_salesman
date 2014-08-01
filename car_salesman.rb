require './lib/car_store'
require './lib/car_options'
require 'pry'

@your_options = ""

def car_salesman
  loop do
    puts "\nWelcome to Dick Butt's Auto Emporium!"
    puts "\nWe have the following cars in stock:"

    Vehicle.warehouse.each do |car|
      puts "#{car.make} #{car.model}"
    end

    puts "\nType the name of the vehicle you would like to buy!"
    puts "\n"

    @user_input = gets.chomp

    if @user_input == 'x'
      puts "Ok, let's start over!"
      car_salesman
    else
      vehicleSearch
    end
  end
end

def vehicleSearch
  Vehicle.warehouse.each do |car|
    if @user_input != "#{car.make} #{car.model}"
      next
    elsif @user_input == "#{car.make} #{car.model}"
      puts "Here are the specs on the #{car.make} #{car.model}:\n"
      puts "\nYear: #{car.year}"
      puts "Price: #{car.price}"
      puts "\n"
      @your_price = car.price
      addOptions
    else
      puts "Sorry, we don't have that model. Come back now ya here!"
      car_salesman
    end
  end
end


def addOptions
  puts "The #{@user_input} has the following options:\n"

  Options.catalog.each do |option|
    puts "#{option.name}"
  end

  puts "\nType the items that you would like to add to your car!"
  puts "Type 'x' if you would like to decline these"

  @user_option_input = gets.chomp

  if @user_option_input == 'x'
    finalOutput
  end

  option = Options.find_by_name(@user_option_input)
  if option == false
    puts "Sorry we don't have that. Please try again"
    addOptions
  else
    @your_price += option.price
    @your_options += "#{option.name} & "

    Options.delete(option)
    puts "Would you like to add another option? Type 'y' to see the add-ons list again"
    @user_option_input = gets.chomp
    if @user_option_input == 'y'
      addOptions
    else
      finalOutput
    end
  end
end

def finalOutput
  @your_options.chop!.chop!.chop!
  puts "Alright, your #{@user_input} with #{@your_options} will cost #{@your_price}."
  puts "Thanks for comin-by ol' Dick Butt's Auto Emporium. We hope you enjoy your new car!"
  exit
end

car_salesman
