class ApplicationController < ActionController::Base
	helper_method :current_user

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def authenticate_user!
		redirect_to login_path unless current_user
	end

	def authenticate_admin!
		redirect_to root_path unless current_user&.admin?
	end

end
