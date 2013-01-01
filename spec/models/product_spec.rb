require 'spec_helper'
describe Product do 

	context "base" do
		it "has a valid factory" do
			create(:product).should be_valid
		end
	end

	context "validations" do
		it "is invalid without a name" do
			build(:product, name: nil).should_not be_valid
		end
	end

	context "methods and scopes" do
		 before(:each) do
      @product = build(:product)
    end
    it " total_price should return sale_price if product is on_sale, otherwise return price " do
			@product.on_sale = true 
			@product.total_price.should == @product.sale_price
			@product.on_sale = false 
			@product.total_price.should == @product.price
		end
		it "should include product inside the in_stock scope" do
			@product.qty = 10
			@product.save
			Product.in_stock.should include(@product)			
		end
		it "should not include product inside the in_stock scope" do
			@product.qty = 0
			@product.save
			Product.in_stock.should_not include(@product)			
		end		
	end

end