class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end

  def show_properties
    "\nName of Vehicle: #{@name}\nPrice of Vehicle:#{@price}"
  end

  def new_price(price)
    @price = price
  end
end
