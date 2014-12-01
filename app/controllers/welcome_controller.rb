class WelcomeController < ApplicationController
	def index
		if session[:authorized].nil?
			render :status => :forbidden, :text => "Forbidden"
		end
	end
end
