class Story < ActiveRecord::Base
validates :title, :link, :category, :upvotes, presence: true
validates_format_of :link, :with => /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,15}(:[0-9]{1,5})?(\/.*)?\z/ix, :message => "You must start your url with http://"


  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end
