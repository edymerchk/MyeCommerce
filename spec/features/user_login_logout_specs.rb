require 'spec_helper'

describe "User Actions" do
  before :each do     
    @user = create(:user)      
  end
  it "should let login a existing user" do
    visit root_path 
    click_link 'Login'
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button "Login"
    page.should have_content "Signed in successfully."  
  end
  it "shoult let logout" do
  	visit root_path 
    click_link 'Login'
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button "Login"  	
  	visit root_path
  	click_link 'Logout'
  	page.should have_content "Login"  

  end
end