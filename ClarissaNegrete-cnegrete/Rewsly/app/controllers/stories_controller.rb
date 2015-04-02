class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update]
  def index
    @stories = params[:q] ? Story.search_for(params[:q]) : Story.all
  end

  def show
    @story = Story.find params[:id]
  end

  def edit
    @story = Story.find params[:id]
  end

  def new
    @story = Story.new
  end

  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end


  def create
    safe_story_params = params.require(:story).permit(:title, :link, :category)
    @story = Story.new story_params.merge(:upvotes => 1)

    if @story.save
      redirect_to @story
    else
      render :new
    end
  end

private
def set_story
    @story = Story.find(params[:id])
  end
  
  def story_params
    params.require(:story).permit(:title, :link, :category)
  end
end
