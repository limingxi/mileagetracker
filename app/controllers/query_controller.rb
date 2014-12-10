class QueryController < ApplicationController
	def index
		if session[:authorized].nil? or session[:authorized] == false
			render :status => :forbidden, :text => "Forbidden" and return
    		end
	end
	def list
		if session[:authorized].nil? or session[:authorized] == false
			render :status => :forbidden, :text => "Forbidden" and return
    		end
		@trackersqueried = Tracker.joins(:employee)
				.select("employees.name as name, employees.id as id, trackers.source as source, trackers.dest as dest, SUM(trackers.distance) as dist, trackers.created_at as create_at")
				.group("employees.name,employees.id").all(:conditions =>
  ["trackers.created_at >= :start_date AND trackers.created_at <= :end_date", { :start_date => params[:start_date], :end_date => params[:end_date] }])
		puts @trackersqueried.inspect
	end
end
