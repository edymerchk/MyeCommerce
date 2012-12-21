namespace :db do
  desc "Fill database with inital data"
  task populate: :environment do
   make_users
   make_categories
 end
end



def make_users

#default user
User.create!(email:    "user@user.com",
                 password: "password",
                 password_confirmation: "password",
                 first_name: "Luis",
                 last_name: "Laverde",
                 country: "Colombia",
                 birthday: "12/27/2012"
                 )  
end

def make_categories
  Category.create!(name: "Shoes", color: "grey")
  Category.create!(name: "Jeans", color: "blue")
  Category.create!(name: "Hats", color: "brown")
  Category.create!(name: "T-shirts", color: "red")
  Category.create!(name: "Jackets", color: "black")
  
end
