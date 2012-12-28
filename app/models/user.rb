class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :birthday, :country, :avatar, :admin

  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "80x80>" }
  has_one :cart, dependent: :destroy

  # VALIDATIONS
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  validates :email, :presence => true, length: { maximum: 255 }, :format => { with: VALID_EMAIL_REGEX },
            :uniqueness => { case_sensitive: false }

  before_save { |user| user.email = email.downcase }


  validates_attachment :avatar,
    content_type: { content_type: /^image\/.?(gif|png|jpg|jpeg)$/i },
    size: { in: 1..500.kilobytes }
  
  validates_presence_of :password, :password_confirmation, :first_name, :last_name, :country
  validates_uniqueness_of :email


  def my_cart
    @cart ||= Cart.find_or_create_by_user_id(self.id)
  end
  

  def full_name
    [first_name, last_name].join(' ')
  end
  
end
