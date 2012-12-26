class Product < ActiveRecord::Base
  attr_accessible :description, :name, :on_sale, :price, :qty, :sale_price, :category_id, :picture
  
  belongs_to :category
  has_many 	:items
  has_many	:carts, :through => :items

  has_attached_file :picture, :styles => { :medium => "200x200>", :thumb => "100x100>" }
  
 	scope :in_stock, where("qty > ?", 0)

end