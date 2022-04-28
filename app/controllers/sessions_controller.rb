class SessionsController < ApplicationController

	#new session
	def login
		#login form
		@user = User.new
		#explicitly rendering it because your view doesn't have new.html.erb
		#instead it has login.html.erb
		render 'login'
		
	end

	#creates a new session
	def create
		#loging in
		@user = User.find_by(email: params[:user][:email])
		
		#Check if the user exits
		#If the user exits, then authenticate password

		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			render 'login'
			#you can also use rendering in this format
			#render :login
		end
	end

	#destroys a session
	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end

end
