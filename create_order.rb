require_relative 'address'
require_relative 'food'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'order'

address_1 = Address.new(
  "123 Main Street",
  "Westerville",
  "OH",
  "43081"
)

address_2 = Address.new(
  "122 Michael Ave",
  "Westerville",
  "OH",
  "43081"
)

restaurant = Restaurant.new("Deli and Brew", address_1)
restaurant.add(Food.new("Fish and Chips", 15.00))
restaurant.add(Food.new("Meat Pie", 12.00))
restaurant.add(Food.new("Rueben", 17.00))
restaurant.add(Food.new("Coke", 2.50))


joe = Customer.new("Joe", address_2)


order = Order.new(joe, restaurant)
order.add(restaurant.food[1])
order.add(restaurant.food[2])

puts order.receipt
