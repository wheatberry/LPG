class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find(params[:name])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.user_id
			redirect_to user_path(@user), :notice => "Signed In!"
		else
			flash.now.alert = "Invalid name or password"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Signed out!"
	end
end
