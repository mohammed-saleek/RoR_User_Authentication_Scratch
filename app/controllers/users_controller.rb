class UsersController < ApplicationController

	#new user
	def new
		@user = User.new
	end

	#Creates a new user
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to  user_path(@user)
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	#Deletes a user object
	def destroy
	end

	private
	def user_params
		#:user => Is the hash keyword
		params.require(:user).permit(:email,:password)
	end


end
