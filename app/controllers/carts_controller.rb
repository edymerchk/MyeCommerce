class CartsController < ApplicationController
  respond_to :html, :json, :js   
  layout "store_layout"
  def show

  	cart=current_user.my_cart
  	@items = cart.items

  end

  def destroy
  end
end
