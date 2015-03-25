class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
    @user_choice = params[:id].to_i
    @app_choice = rand(1..2)
    outcome_partial = check_winner(@user_choice ,@app_choice )
  end

 def check_winner(user_throw,app_throw)
 	user_throw = params[:id].to_i
    app_throw = rand(1..2)
    


    if user_throw == 1 && app_throw == 0
    	@outcome_partial = 'win'
    elsif user_throw == 1 && app_throw == 2
    	@outcome_partial = 'lose'
    elsif user_throw == 0 && app_throw == 1
    	@outcome_partial = 'lose'
    elsif user_throw == 0 && app_throw == 2
    	@outcome_partial = 'win'
    elsif user_throw == 2 && app_throw == 1
    	@outcome_partial = 'win'
    elsif user_throw == 2 && app_throw == 0
    	@outcome_partial = 'lose'
    elsif user_throw == app_throw
    	@outcome_partial = 'tie'
    end
  end
end