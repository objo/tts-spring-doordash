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

  def receipt
    string = ""
    string << "Order for #{@customer.name}: \n"
    string << "Order taken on: #{@created_at}\n"
    string << "\n"
    string << "Items: \n"
    @food.each do |food|
      string << " - #{food.name}\t: $#{food.price} \n"
    end
    string << "Total for the order is $#{total}\n"
    string << "\n\n"
    string << "Please come again! "
  end
end
