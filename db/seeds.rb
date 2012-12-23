# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
class SampleData
	def run
		make_users
		make_categories
	end

	def make_users
	#default user
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

	end

	def make_categories
	  Category.create!(name: "Shoes", color: "grey")
	  Category.create!(name: "Jeans", color: "blue")
	  Category.create!(name: "Hats", color: "brown")
	  Category.create!(name: "T-shirts", color: "red")
	  Category.create!(name: "Jackets", color: "black")
	  
	end
end

#SampleData.run
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

	  Category.create!(name: "Shoes", color: "grey")
	  Category.create!(name: "Jeans", color: "blue")
	  Category.create!(name: "Hats", color: "brown")
	  Category.create!(name: "T-shirts", color: "red")
	  Category.create!(name: "Jackets", color: "black")