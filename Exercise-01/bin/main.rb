require_relative "../lib/string.rb"

puts "Enter Text:"
text = gets.chomp
text.alphabets_occurence.each { |alphabet, count| puts "#{alphabet} => #{count}" }