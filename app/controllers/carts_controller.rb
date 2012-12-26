class CartsController < ApplicationController
  respond_to :html, :json, :js   
  layout "store_layout"
  def show
  	@cart=current_or_guest_user.my_cart
  	@items = @cart.items

  end

  def destroy
  	#@cart=current_or_guest_user.my_cart
    @cart = Cart.find(params[:id])
    #puts "destroy #{@cart.id}"
  	@cart.items.destroy_all
  	respond_with(@cart)
  end
end
