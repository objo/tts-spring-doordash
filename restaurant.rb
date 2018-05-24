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
