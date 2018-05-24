class Address
  attr_reader :street, :city, :state, :zip
  def initialize(street, city, state, zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end

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

class Food
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Customer
  attr_reader :name, :address
  def initialize(name, address)
    @name = name
    @address = address
  end
end

class Order
  attr_reader :food, :created_at
  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @food = []
    @created_at = Time.now
  end

  def add(food)
    @food << food
  end

  def total
    total = 0
    @food.each do |f|
      total = total + f.price
    end
    total
  end

  def reciept
    string = ""
    string << "Order for #{@customer.name}: \n"
    string << "Order taken on: #{@created_at}\n"
    string << "\n"
    string << "Items: \n"
    @food.each do |food|
      string << " - #{food.name}: \n"
    end
    string << "Total for the order is $#{total}\n"
    string << "\n\n"
    string << "Please come again! "
  end
end


address = Address.new(
  "123 Main Street",
  "Westerville",
  "OH",
  "43081"
)

@restaurant = Restaurant.new("Deli and Brew", address)

@restaurant.add(Food.new("Fish and Chips", 15.00))
@restaurant.add(Food.new("Meat Pie", 12.00))
@restaurant.add(Food.new("Rueben", 17.00))
@restaurant.add(Food.new("Coke", 2.50))
