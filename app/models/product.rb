class Product < ActiveRecord::Base
  attr_accessible :description, :name, :on_sale, :price, :qty, :sale_price, :category_id, :picture
  
  belongs_to :category
  has_many 	:items
  has_many	:carts, :through => :items
  has_attached_file :picture, :styles => { :medium => "200x200>", :thumb => "100x100>" }

  validates_presence_of :description, :name, :price, :qty
  validates_uniqueness_of :name
  validates_numericality_of :price, :qty, greater_than_or_equal_to: 0


  validates_attachment :picture,
    content_type: { content_type: /^image\/.?(gif|png|jpg|jpeg)$/i },
    size: { in: 1..500.kilobytes }
  
 	scope :in_stock, where("qty > ?", 0)

  #searchable do
    #text :name, :description
  #end

  def total_price
    on_sale ? sale_price : price
  end

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search_condition, search_condition])
  end



end