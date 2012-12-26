# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.destroy_all

	User.create!(email:    "user@user.com",
	                 password: "password",
	                 password_confirmation: "password",
	                 first_name: "Luis",
	                 last_name: "Laverde",
	                 country: "Colombia",
	                 birthday: "12/27/1988",
	                 admin: false
	                 )  
	#default Admin
	User.create!(email:    "admin@admin.com",
	                 password: "password",
	                 password_confirmation: "password",
	                 first_name: "Edimerchk",
	                 last_name: "Laverde",
	                 country: "Colombia",
	                 birthday: "12/27/1988",
	                 admin: true
	                 ) 

	Category.destroy_all                 

	 Category.create!(name: "Shoes", color: "grey")
	  Category.create!(name: "Jeans", color: "blue")
	  Category.create!(name: "Hats", color: "brown")
	  Category.create!(name: "T-shirts", color: "red")
	  Category.create!(name: "Jackets", color: "black")

	  Product.destroy_all  


	  50.times do |n|
	  	price =Random.rand(100)
	  	Product.create!(name: Faker::Company.name,
	  				 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id laoreet dui. Sed iaculis libero id eros hendrerit pulvinar. Nunc quis tortor felis, nec faucibus felis. Suspendisse interdum convallis nisl, nec feugiat enim tincidunt a. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	  				 on_sale: true,
	  				 price: price,
	  				 sale_price: price*(Random(80..100)/100.0),
	  				 qty:Random.rand(5),
	  				 category_id: Random.rand(1..5),	  				 
	  			)
	  end