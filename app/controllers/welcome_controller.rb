require 'digest/md5'
class WelcomeController < ApplicationController
	def index
		
	end
	def login
		originstr="2ecdde3959051d913f61b14579ea136d"
		md5=Digest::MD5.hexdigest(params[:acode])
		if md5==originstr
			session[:authorized] = true
			redirect_to ("/welcome/home") and return
		else
			session[:authorized] = false
			redirect_to ("/welcome") and return
		end
	end
	def home
		if session[:authorized].nil? or session[:authorized] == false
			render :status => :forbidden, :text => "Forbidden" and return
    		end
	end
end
