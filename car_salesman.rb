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
    puts "Type 'x' if you'd like to start over"

    user_input = gets.chomp

    if user_input == 'x'
      puts "Ok, let's start over!"
      car_salesman
    end

    # puts Vehicle.warehouse.length
    Vehicle.warehouse.each do |car|
      if user_input != "#{car.make} #{car.model}"
        next
      elsif user_input == "#{car.make} #{car.model}"
        puts "Here are the specs on the #{car.make} #{car.model}:\n"
        puts "\nYear: #{car.year}"
        puts "Price: #{car.price}"
        @your_price = car.price
        # @your_Index = car.index
      else
        puts "Sorry, we don't have that model. Come back now ya here!"
      end
    end

    puts "The #{user_input} has the following options:\n"
    Options.catalog.each do |option|
      puts "#{option.name}"
    end

    puts "\nType the items that you would like to add to your car!"
    puts "Type 'x' if you would like to decline these"

    user_option_input = gets.chomp

    if user_option_input == 'x'
      puts "Ok great! Your car you selected is the #{user_input}"
      puts "Your total price is #{@your_price}"
    end
###############
    Options.catalog.each do |option|
      if user_option_input == "#{option.name}"
        @your_price += option.price
        option_index = option.catalog.index
        puts option_index
        puts "Your current price is #{@your_price}"
        Options.catalog.delete_at(option)

      elsif user_option_input != "#{option.name}"
        next
      end
    end
  end
end
# p "#{Vehicle.warehouse[2].make} #{Vehicle.warehouse[2].model}"

car_salesman
