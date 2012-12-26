class Category < ActiveRecord::Base
  attr_accessible :color, :name
  has_many :products

  validates_presence_of :color, :name
end
