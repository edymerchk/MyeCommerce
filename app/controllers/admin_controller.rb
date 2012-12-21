class AdminController <ApplicationController
	layout "application"
	before_filter :authenticate_user!, :authenticate_admin

	def authenticate_admin
		redirect_to root_path, alert: "Must be admin" unless current_user.admin?
	end
end