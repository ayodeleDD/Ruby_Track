require_relative "../lib/string.rb"

msg = "Enter word/sentence to check for palindrome(s) - (q/Q to quit):"
puts msg
string = gets.chomp

until string.match(/q|Q/)
  puts string.palindrome?
  puts msg
  string = gets.chomp
end
