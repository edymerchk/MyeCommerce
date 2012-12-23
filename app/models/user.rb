class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :birthday, :country, :avatar, :admin

  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }
  has_one :cart, dependent: :destroy

  def my_cart
  	cart=Cart.find_by_user_id(self.id)
  	cart= Cart.create(user_id: self.id) unless cart  	
  	cart
  end
  
end
