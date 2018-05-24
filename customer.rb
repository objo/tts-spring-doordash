class Customer
  attr_reader :name, :address
  def initialize(name, address)
    @name = name
    @address = address
  end
end

@joe = Customer.new("Joe", @address_2) 
