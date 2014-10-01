class NewslettersController < ApplicationController

	def index
		@newsletters = Newsletter.all
	end

	def show
		@newsletters = Newsletter.find(params[:id])
	end

end
