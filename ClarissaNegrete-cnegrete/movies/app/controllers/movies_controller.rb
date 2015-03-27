class MoviesController < ApplicationController
  	def index
  		@movies = Movie.search(params[:q])
  		
 	 end

   	def show
   	 @movies = Movie.find(params[:id])
   	end

   	def new
   	 @movies = Movie.new
	end
  
   def edit
   	@movies = Movie.find(params[:id])
   end

  	def create
    @movies = Movie.new(movie_params)

    respond_to do |format|
      if @movies.save
        format.html { redirect_to @movies, notice: 'Movie was successfully added.' }
        format.json { render :show, status: :created, location: @movies }
      else
        format.html { render :new }
        format.json { render json: @movies.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movies = Movie.find(params[:id])
        format.html { redirect_to @movies, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movies }
      else
        format.html { render :edit }
        format.json { render json: @movies.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movies.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_movie
      @movies = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :description, :year_released)
    end
end

 