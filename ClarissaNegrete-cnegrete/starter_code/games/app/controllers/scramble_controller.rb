class ScrambleController < ApplicationController

	def index
	end

  def new
  	words = ["green", "spot", "tiger"]
		@word = words.sample 
  end


 def show
    @guess = params[:guess]
    @word = params[:word]
    outcome_partial = check_winner(@guess, @word )
  end
 
def shuffle(s)
   s.split('').shuffle(s.length()).join
   return s
 end


  	if @guess == @word
   		@outcome_partial = 'win'
  	else
  		@outcome_partial = 'lose'

 		
  end
end
