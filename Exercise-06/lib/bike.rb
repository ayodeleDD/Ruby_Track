require_relative 'vehicle.rb'

class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def show_properties
    super
    "Name:#{@name}\nPrice: #{@price}\nDealer: #{@dealer}"
  end
end
