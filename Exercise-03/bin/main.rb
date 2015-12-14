require_relative "../lib/fibonacci.rb"

puts "The Fibonacci Sequence For Integers Up To 1000:"
fibonacci = Fibonacci.new
fibonacci.fibonacci_up_to(1000) { |sum| print sum, " " }
puts
