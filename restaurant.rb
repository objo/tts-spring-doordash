require_relative 'food'
require_relative 'address'

class Restaurant
  attr_reader :name, :address, :food
  def initialize(name, address)
    @name = name
    @address = address
    @food = []
  end
  def add(food)
    @food << food
  end
end

@restaurant = Restaurant.new("Deli and Brew", @address_1)

@restaurant.add(Food.new("Fish and Chips", 15.00))
@restaurant.add(Food.new("Meat Pie", 12.00))
@restaurant.add(Food.new("Rueben", 17.00))
@restaurant.add(Food.new("Coke", 2.50))
