class EventsController < ApplicationController
  def index
  	@events = Event.published(:order => "created_at DESC")

  	respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end
end