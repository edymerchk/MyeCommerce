require 'spec_helper'


describe "Cart Actions" do
  before :each do     
      @product =create(:product)
      @user =create(:user)
      login @user
  end  
  it "should add @product to @user's cart" do  	
    visit product_path(@product)
    click_button "Add to Cart"
    within(".cart") do 
    	something.should have_content("1")
    end    
    #save_and_open_page
 end
end