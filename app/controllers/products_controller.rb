class ProductsController < ApplicationController
  layout "store_layout"
  before_filter :authenticate_user!
  load_and_authorize_resource  

  respond_to :html, :json, :js


  def show
    @product = Product.find(params[:id])
    respond_with(@product)
  end
 
end
