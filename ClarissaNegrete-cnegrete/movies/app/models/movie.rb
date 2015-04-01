class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :year_released, numericality: {greater_than: 1800, only_integer: true }
	validates :description, length: { minimum: 10 }

	def self.search(query)
		if query 
  			@movies = Movie.where('title LIKE :search OR description LIKE :search OR year_released LIKE :search', search: "%#{query}%")
  		else
  			Movie.all
  		end	
	end
end
