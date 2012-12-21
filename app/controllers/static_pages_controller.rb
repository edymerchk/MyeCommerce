class StaticPagesController < ApplicationController
	def index
		@var = "It works!"
		
	end

	def admin
		
	end

	def login
		render :layout => 'login_layout'			
  	end
end
