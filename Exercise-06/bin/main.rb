require_relative "../lib/vehicle.rb"
require_relative "../lib/bike.rb"

bike = Bike.new("Ducati DZ900", 9000, "Super Machines, Inc.")
puts "Initial Details: \n#{bike.show_properties}"
puts "\n\nNew Price Being Set"
bike.new_price(10000)
puts "\nNew Details: \n#{bike.show_properties}"
