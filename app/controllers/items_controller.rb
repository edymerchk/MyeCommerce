class ItemsController < ApplicationController
  
  def create
  		cart=current_user.my_cart
  		product = Product.find(params[:id])
  		cart.add_item(product)
    	redirect_to cart_path(cart)    	
  end

  def destroy

      item = Item.find(params[:id])
  		cart=item.cart
  		product = item.product
  		cart.remove_item(product)
      cart.save
    	redirect_to cart_path(cart)
  end


end
