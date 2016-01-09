class MarksController < ApplicationController
  def index
  	@marks = Mark.all
  end

  def new
  	@mark = Mark.new
  end

  def create
  	@mark = Mark.new(mark_params)
  	  if @mark.save
  	  	redirect_to :action => 'index'
  	  else
  	  	render(:action=> 'new')
  	  end
  	end
  	def mark_params
  		params.require(:mark).permit(:news)
  	end
end
