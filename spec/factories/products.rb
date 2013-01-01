FactoryGirl.define do	
	factory :product do
		name Faker::Company.name
		description Faker::Lorem.paragraph
		on_sale [true, false].sample
		price 100
		qty 10
		sale_price 92.2

		factory :invalid_product do
			name nil
			description nil
		end

	end
end