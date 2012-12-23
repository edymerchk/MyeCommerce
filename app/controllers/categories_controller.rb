class CategoriesController < ApplicationController
  respond_to :html, :json, :js

   before_filter :authenticate_user!
   load_and_authorize_resource  
   layout "store_layout"


  def show
    @category = Category.find(params[:id])
    @products = @category.products

  end

end
