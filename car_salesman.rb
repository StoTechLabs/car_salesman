require './lib/car_store'
require './lib/car_options'

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
      optionsList
    else
      puts "Sorry, we don't have that model. Come back now ya here!"
      car_salesman
    end
  end
end


def optionsList
  puts "The #{@user_input} has the following options:\n"

  Options.catalog.each do |option|
    puts "#{option.name}"
  end

  puts "\nType the items that you would like to add to your car!"
  puts "Type 'x' if you would like to decline these"

  @user_option_input = gets.chomp
  option = Options.find_by_name(@user_option_input)
  @your_price += option.price

  if @user_option_input == 'x'
    finalOutput
  end
  optionsAdd
end


def optionsAdd
  ###############
  # option_index = option.catalog.index
      # puts option_index
      puts "Your current price is #{@your_price}"
      # Options.catalog.delete_at(option)

    elsif @user_option_input != "#{option.name}"
      puts" Sorry we don't have that. Please try again"
      optionsList

  puts "Would you like to add another option? Type 'yes' or 'no'."
  @user_option_input = gets.chomp
  p @user_option_input
  if @user_option_input == 'yes'
    optionsList
  elsif @user_option_input != 'yes'
  end
  finalOutput
end


def finalOutput


  puts "Thanks for comin by Dick Butt's Auto Emporium."
  puts "We hope you enjoy your new #{user_input}! Have a great day!"
  car_salesman
end

# p "#{Vehicle.warehouse[2].make} #{Vehicle.warehouse[2].model}"

car_salesman
