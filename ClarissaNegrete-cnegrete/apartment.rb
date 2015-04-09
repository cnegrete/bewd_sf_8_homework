apartment.rb
class Apartment
	attr_accessor :name, :rent, :num_bedrooms, :sqft, :num_bathrooms
end
class Apartment
	def initialize(name, rent, sqft, num_bedrooms, number_bathrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@number_bathrooms = number_bathrooms
	end
end
initialize
Apartment.new
classy_apartment = Apartment.new('Classy Apartment', 15000, 15000, 5, 5)
