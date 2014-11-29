class TrackerController < ApplicationController
	def index
		Rails.logger.debug params.inspect
		@tracker=Trackers.new(params[:track])
		if @tracker.save
			Rails.logger.debug "succ"
		end
	end
end
