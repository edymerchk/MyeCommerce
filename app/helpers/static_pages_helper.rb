module StaticPagesHelper

	def categories
		 Category.all.each do |category|
            "<li>#{link_to category.name, category_path(category)}</li>"
         end		
	end
end
