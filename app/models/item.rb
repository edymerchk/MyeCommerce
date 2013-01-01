class Item < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :qty
  belongs_to	:cart
  belongs_to	:product


  def total_price
  	self.product.price * self.qty  	
  end
end
