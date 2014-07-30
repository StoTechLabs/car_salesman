require './lib/car_store'

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
      car_salesman
    end

    Vehicle.warehouse.each do |car|
      if user_input == "#{car.make} #{car.model}"
        puts "Here are the specs on the #{car.make} #{car.model}:\n"
        puts "\nYear: #{car.year}"
        puts "Price: #{car.price}"
      else
        puts "\nSorry. We don't currently have a #{user_input}."
        car_salesman
      end
    end

  end
end
car_salesman
