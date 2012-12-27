class ItemObserver < ActiveRecord::Observer

	def after_update(item)
    UserMailer.product_added(User.find(item.cart.user_id), item.product).deliver
  end
end


