class ShortcutsController < ApplicationController

	def index
  	#@shortcuts = Shortcut.search(params[:q])
  end

  def new
  	@shortcut = Shortcut.new
  end

  def show
  	@shortcut = Shortcut.find(shortcut_params)
  end
end
