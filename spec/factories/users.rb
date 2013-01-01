FactoryGirl.define do
	factory :user do
		first_name Faker::Name.first_name
		last_name Faker::Name.last_name
		email Faker::Internet.email 
		password "1234567890"
		password_confirmation "1234567890"
		country "Colombia"
	  birthday "12/27/1988"
	  admin false
	end
end