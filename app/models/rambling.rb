class Rambling < ActiveRecord::Base
	has_many :comments

	scope :last_five, lambda { order("ramblings.created_at DESC").limit(5) }
	scope :sorted, lambda { order("ramblings.created_at DESC") }
	
end
