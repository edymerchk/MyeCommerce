class Cart < ActiveRecord::Base
  attr_accessible :user_id
  has_many 	:items
  has_many	:products, :through => :items


  def add_item(product)  
    item = Item.find_or_initialize_by_cart_id_and_product_id(self.id, product.id)
    item.qty = (item.qty || 0) + 1
    item.save   
  end

  def remove_item(product)
    item = Item.find_by_cart_id_and_product_id("cart_id = ? AND product_id = ?", self.id, product.id)
    item.destroy_all
  end

  def cart_count    
    items.to_a.sum(&:qty) 
  end

  def cart_price
    items.to_a.sum(&:total_price)    
  end
end
