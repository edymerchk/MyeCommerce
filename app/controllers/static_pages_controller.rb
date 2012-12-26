class StaticPagesController < ApplicationController
	layout "store_layout"

  def about
  	
  end

  def home
    @new_products = Product.in_stock.order("created_at DESC").limit(4)
  end


  	def search
		@search = Product.search do
			fulltext params[:search]
		end
		@products = @search.results

	end
end
