class ProductObserver < ActiveRecord::Observer
	def after_update(product)
    
    if product.price_changed?
    		Item.find_all_by_product_id(product.id).each do |item|
        UserMailer.price_changed(User.find(item.cart.user_id), item.product).deliver        
      end 
    end
  end
end
