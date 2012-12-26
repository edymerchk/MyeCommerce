class CategoriesController < ApplicationController
  respond_to :html, :json, :js

   layout "store_layout"


  def show
    @category = Category.find(params[:id])
    @products = @category.products

  end

end
