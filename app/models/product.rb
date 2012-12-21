class Product < ActiveRecord::Base
  attr_accessible :description, :name, :on_sale, :price, :qty, :sale_price, :category_id, :picture
  belongs_to :category

  has_attached_file :picture, :styles => { :medium => "200x200>", :thumb => "100x100>" }

end
