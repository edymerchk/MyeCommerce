class ItemsController < ApplicationController
  


  def add
  		cart=current_or_guest_user.my_cart
  		product = Product.find(params[:id])
  		cart.add(product)
    	redirect_to cart_path(cart)    	
  end

  def remove
  end
end
