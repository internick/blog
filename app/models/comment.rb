class Comment < ActiveRecord::Base
	
	belongs_to :rambling

	scope :sorted, lambda { order("comments.created_at ASC") }

end
