module ApplicationHelper
	
	def print_categories

		raw(
			Category.all.collect do |category|                    
				content_tag :li do
				 content_tag :div do 
					link_to category.name, category_path(category),:style => "color: #{category.color}"       	
					end
				end
			end.join
			)
	end
end
