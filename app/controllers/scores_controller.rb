class ScoresController < ApplicationController

	


	def create
		@user = User.find(params[:user_id])
		@score = @user.scores.create(score_params)
		# get location data from distances model and calculate points
		redirect_to user_path(@user)
	end

	def show
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
	end


	def destroy
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
		@score.destroy
		redirect_to user_path(@user)
	end

	private

		def score_params 
			params.require(:score).permit(:current_location, :plate_spotted, :points, :user_id)
		end
end
