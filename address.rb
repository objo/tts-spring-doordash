class Address
  attr_reader :street, :city, :state, :zip
  def initialize(street, city, state, zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end

@address_1 = Address.new(
  "123 Main Street",
  "Westerville",
  "OH",
  "43081"
)

@address_2 = Address.new(
  "122 Michael Ave",
  "Westerville",
  "OH",
  "43081"
)
