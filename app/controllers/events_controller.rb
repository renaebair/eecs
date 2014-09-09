class EventsController < ApplicationController
  def index
  	@events = Event.published

  	respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end
end