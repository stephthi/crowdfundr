class SessionsController < ApplicationController

	def create
		user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to projects_url, notice: "Logged In!"
		else
			flash.now[:alert] = "Invalid Email or Password."
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to projects_url, notice: "Logged Out!"
	end

end
