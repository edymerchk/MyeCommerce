class Cart < ActiveRecord::Base
  attr_accessible :user_id
  has_many 	:items
  has_many	:products, :through => :items


  def add(product)  

  	item = Item.where("cart_id = ? AND product_id = ?", self.id, product.id)
  	if item.size > 0
  		#item.qty=+1 #FIX THIS
  	else
  	item = Item.create(cart_id: self.id, product_id: product.id, qty: 1)
  	end
  	
  end

  def update
  	
  end

  def clean_all
  	
  end

  def cart_count    
    res =0
    self.items.each do |item|
      res+=item.qty
    end
    res     
  end

  def cart_price
    res =0
    self.items.each do |item|
      res+=item.total_price
    end
    res    
  end
end
