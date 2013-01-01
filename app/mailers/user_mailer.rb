class UserMailer < ActionMailer::Base
  default from: "contact@myecommerce.com"

  def product_added(user,product)
  	@user = user
  	@product = product
   	mail(:to => user.email, :subject => "MyeCommerce- product added to your cart")  	
  end

  def price_changed(user,product)
  	@user = user
  	@product = product
  	mail(:to => user.email, :subject => "MyeCommerce- Review your cart.")  	
  end
end
