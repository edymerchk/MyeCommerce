FactoryGirl.define do
	factory :category do
		name "Verde"
		color "green"
		factory :invalid_category do
			name nil
			color nil
		end
		after(:create) do |category|      
      		product = create(:product)
      		product.category = category    		
    end
	end		
end