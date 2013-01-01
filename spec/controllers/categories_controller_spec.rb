require "spec_helper"

describe CategoriesController do


	context "basics" do
		before :each do
      @category =create(:category)
      @product = create(:product, category: @category)
    	#@product.save
    end
		describe 'GET #show' do
			it "show the products of the category" do				
				get :show, id: @category
				assigns(:products).should eq [@category.products]
			end
			it "renders the :show template" do
				get :show, id: @category
				response.should render_template :show
			end
		end
	end
end