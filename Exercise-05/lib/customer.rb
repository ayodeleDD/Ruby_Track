class Customer
  attr_accessor :account_no, :balance

  def initialize(name, account_no = 1234567890, balance = 1000.0)
    @name = name
    @account_no = account_no + 1
    @balance = balance.to_f
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def amount_withdrawable?(amount)
    @balance >= amount ? withdraw(amount) : "Insufficient Funds"
  end

  def account_details
    "Account Details:\nName: #{@name}\nAccount Number: #{account_no}\nBalance: #{balance}\n\n"
  end
end