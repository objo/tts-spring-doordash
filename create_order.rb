require_relative 'address'
require_relative 'food'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'order'


order = Order.new(@joe, @restaurant)
order.add(@restaurant.food[1])
order.add(@restaurant.food[2])

puts order.receipt
