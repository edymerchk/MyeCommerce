class CartsController < ApplicationController
  respond_to :html, :json, :js   
  layout "store_layout"
  before_filter :authenticate_user!
  def show
  	@cart=current_user.my_cart
  	@items = @cart.items

  end

  def destroy
  	
    @cart = Cart.find(params[:id])    
  	@cart.items.destroy_all
  	respond_with(@cart)
  end
end
