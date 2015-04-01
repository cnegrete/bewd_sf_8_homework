class ShortcutsController < ApplicationController
	before_action :load_link_by_hash_code, only: [:redirectors, :preview]
	before_action :set_shortcut, only: [:show]
  require 'securerandom'

	def index
  	#@shortcuts = Shortcut.search(params[:q])
  end

  def create
  	@shortcut = Shortcut.new(shortcut_params)
 		@shortcut.hash_code = rand(10000).to_s
 		if @shortcut.save
			redirect_to @shortcut
		else
			redirect_to new_shortcut_path
 		end
	end

  def new
  	@shortcut = Shortcut.new
  end

  def show
  	@shortcut = Shortcut.find(params[:id])
  end

	def redirectors
		if @shortcut
			redirect_to @shortcut.my_link
		else
			redirect_to new_shortcut_path
		end
 	end

 	def preview
 		unless @shortcut
 			redirect_to new_shortcut_path
 		end
 	end



  private
  def set_shortcut
    @shortcut = Shortcut.find(params[:id])
  end

  def shortcut_params
    params.require(:shortcut).permit(:my_link, :hash_code)
  end

  def load_link_by_hash_code
  	@shortcut = Shortcut.find_by hash_code: params[:hash_code]
  end

end
