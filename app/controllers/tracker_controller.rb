class TrackerController < ApplicationController
	def index
		Rails.logger.debug params.inspect
		@tracker=Tracker.new(params[:track])
		if @tracker.save
			Rails.logger.debug "succ"
		end		
    		render :nothing => true
	end
end
