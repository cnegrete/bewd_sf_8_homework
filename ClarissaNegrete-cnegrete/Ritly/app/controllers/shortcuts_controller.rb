class ShortcutsController < ApplicationController

	def index
  	#@shortcuts = Shortcut.search(params[:q])
  end

  def new
  	@shortcut = Theshortcut.new
  end

  def show
  	@shortcut = Shortcut.find(shortcut_params)
  end
end
