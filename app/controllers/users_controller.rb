class UsersController < ApplicationController

	def index
		@users = User.all
		@play = "active"
	end
	
	def new
		@user = User.new
		@signU = "active"
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in(@user)
		redirect_to user_path(@user) 
		else
		render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@pro = "active"
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private

		def user_params
			params.require(:user).permit(:name, :password, :password_confirmation, :last_cur_loc)
		end
end
