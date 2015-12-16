require_relative "../lib/customer.rb"

puts "Select Operation:\n1. New Account\n2. Quit"
input = gets.chomp

abort("Goodbye...") if input.match(/^2$/)

if input == "1"
  puts "\nCreating New Account\nEnter name:"
  name = gets.chomp
  customer = Customer.new(name)
  puts customer.account_details
end

puts "\nSelect transaction:\n1. Withdrawal\n2. Deposit\n3. Quit"
transaction = Integer(gets.chop)

case transaction
when 1
  puts "Enter withdrawal amount:"
  amount = Float(gets.chop)
  if amount > customer.balance
    puts "Withdrawal Amount can NOT be greater than your current balance. Quiting..."
  else
    customer.withdraw(amount.to_f)
    puts "\n\nUpdated Account Details:\n#{customer.account_details}"
  end

when 2
  puts "Enter deposit amount:"
  amount = Float(gets.chop)
  if amount > 0
    customer.deposit(amount.to_f)
    puts "\n\nUpdated Account Details:\n#{customer.account_details}"
  else
    puts "Deposit amount must be greate than 0. Quitting..."
  end

when 3
  abort("Goodbye...")         
end
