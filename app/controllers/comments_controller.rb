class CommentsController < ApplicationController
  
  layout false
  
  def index
    @rambling = Rambling.find(params[:id])
  	@comments = @rambling.comments.sorted
  end

end
