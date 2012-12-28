require 'spec_helper'
describe User do 
  context "base" do
    it "has a valid factory" do
     create(:user).should be_valid
    end
  end

  context "validations" do 
    before(:each) do
      @user = build(:user)
    end
    [:password, :country].each do |field|
      it "should validate #{field} presence" do
        @user.send("#{field}=", nil)
        @user.should_not be_valid
      end
    end

    it "is invalid with a duplicate email address" do
      create(:user, email: "email@myecommerce.com")
      @user.email = "email@myecommerce.com"
      @user.should_not be_valid
    end  
  end

  context "methods" do 
    it "returns a user's full name as a string" do
      user = build(:user, {first_name: "abc", last_name: "cde"})
      user.full_name.should eq("abc cde")
      user.last_name = nil
      user.full_name.should eq("abc")
    end 
  end


end


