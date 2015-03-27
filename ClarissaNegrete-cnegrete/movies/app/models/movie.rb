class Movie < ActiveRecord::Base
	def self.search(query)
		if query 
  		@movies = Movie.where('title LIKE :search', {search: "%#{query}%"})
  		else
  		Movie.all
  		end
		
	end

end
