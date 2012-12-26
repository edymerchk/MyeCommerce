class ItemsController < ApplicationController
  
  def add
  		cart=current_or_guest_user.my_cart
  		product = Product.find(params[:id])
  		cart.add_item(product)
    	redirect_to cart_path(cart)    	
  end

  def remove
  		cart=current_or_guest_user.my_cart
  		product = Product.find(params[:id])
  		cart.remove_item(product)
    	redirect_to cart_path(cart)
  end
end
