class RamblingsController < ApplicationController

	def index
		@ramblings = Rambling.last_five
	end

	def show
		@rambling = Rambling.find(params[:id])
	end

	def archive
		@ramblings = Rambling.sorted
		@ramblings_by_year = Rambling.group("YEAR(created_at)").order("YEAR(created_at) DESC").count
	end
	
end
