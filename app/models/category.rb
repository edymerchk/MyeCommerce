class Category < ActiveRecord::Base
  attr_accessible :color, :name
  has_many :products
end
