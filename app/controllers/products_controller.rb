class ProductsController < ApplicationController
	layout "store_layout"

	respond_to :html, :json, :js
	before_filter :authenticate_user!


	def show
		@product = Product.find(params[:id])
		respond_with(@product)
	end



end
