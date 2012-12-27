# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



	User.destroy_all

	avatar=File.open(File.join(Rails.root, "db/images/noavatar.png"))

	User.create!(email:    "edyhack@gmail.com",
	                 password: "katalina",
	                 password_confirmation: "katalina",
	                 first_name: "Luis",
	                 last_name: "Laverde",
	                 country: "Colombia",
	                 birthday: "12/27/1988",
	                 admin: false,
	                 avatar: avatar
	                 )  
	#default Admin
	User.create!(email:    "admin@admin.com",
	                 password: "katalina",
	                 password_confirmation: "katalina",
	                 first_name: "Edimerchk",
	                 last_name: "Laverde",
	                 country: "Colombia",
	                 birthday: "12/27/1988",
	                 admin: true,
	                 avatar: avatar
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
	  	picture=File.open(File.join(Rails.root, "db/images/missing.png"))
	  			


	  	Product.create!(name: Faker::Company.name,
	  				 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id laoreet dui. Sed iaculis libero id eros hendrerit pulvinar. Nunc quis tortor felis, nec faucibus felis. Suspendisse interdum convallis nisl, nec feugiat enim tincidunt a. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	  				 on_sale: [true, false].sample,
	  				 price: price,
	  				 sale_price: price*(Random.rand(80..100)/100.0),
	  				 qty:Random.rand(5),
	  				 category_id: Random.rand(1..5),
	  				 picture: picture
	  				

	  			)
	  	

	  end