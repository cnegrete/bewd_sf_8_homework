class Shortcut < ActiveRecord::Base
	validates_format_of :my_link, :with => /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,15}(:[0-9]{1,5})?(\/.*)?\z/ix
end
