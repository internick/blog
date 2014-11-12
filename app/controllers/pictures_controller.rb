class PicturesController < ApplicationController

  layout false

  def view
  	# Get picture IDs
  	@picture_list = params[:p].split(",")
  	
  	# Get position
  	@position = params[:pos].to_i || 0

  	# Get the picture from database
  	@picture = Picture.find_by_old_id(@picture_list[@position])
  	
  	# Set next/prev positions
  	@next_pos = @position < @picture_list.length - 1 ? @position + 1 : nil
  	@prev_pos = @position > 0 ? @position - 1 : nil

  end

end
