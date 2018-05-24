class Address
  attr_reader :street, :city, :state, :zip
  def initialize(street, city, state, zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end
