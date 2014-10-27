class ScoresController < ApplicationController

	def index
		@scores.all
	end
	
	def new
		@score = Score.new
	end

	def create
		@user = User.find(params[:user_id])
		@score = @user.scores.create(score_params)
		distance_calc#(:current_location, :plate_spotted) 
		update_cur_loc
		#render text: params[:score].inspect

		redirect_to user_path(@user)
	end

	def show
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
		redirect_to @user
	end

	def edit
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
	end

	def update
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
		if @score.update(score_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:user_id])
		@score = @user.scores.find(params[:id])
		@score.destroy
		redirect_to user_path(@user)
	end

	private

		def score_params 
			params.require(:score).permit(:current_location, :plate_spotted, :points, :user_id, :last_cur_loc)
		end
end


