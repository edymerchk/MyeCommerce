require 'spec_helper'
describe Category do 
  context "base" do
    it "has a valid factory" do
     create(:category).should be_valid
    end
  end

	context "validations" do 
    before(:each) do
      @category = build(:category)
    end
    [:name, :color].each do |field|
    	 it "should validate #{field} presence" do
        @category.send("#{field}=", nil)
        @category.should_not be_valid
      end
    end
 	end	
end