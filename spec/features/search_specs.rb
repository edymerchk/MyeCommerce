require 'spec_helper'

describe "Search Actions" do
  before :each do     
      @product =create(:product)
  end  
  it "should be show @product on the search results" do
    visit root_path
   fill_in("search", with: @product.name[0..@product.name.length/2-1]) # middle of the product's name
   click_link_or_button 'search_btn'  
   page.should have_content("Search Result")
   page.should have_content(@product.name)
 end
  it "should not show @product on the search results" do
    visit root_path
   fill_in("search", with: "A weird Name")
   click_link_or_button 'search_btn'  
   page.should have_content("Search Result")
   page.should_not have_content(@product.name)
 end
end