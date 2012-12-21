class StaticPagesController < ApplicationController
layout "store_layout"
	

  def about
  	
  end

  def home
    @new_products = Product.in_stock.order("created_at DESC").limit(4)
  end
end
