require "spec_helper"

describe Admin::ProductsController do
	
	context "GET Actions" do
		before :each do
			@product =create(:product)
			@user = create(:user, admin: true)
			sign_in @user 
		end     
		describe "GET #index" do
			it "should show a list of @products" do           
				get :index
				assigns(:products).should == [ @product ]
			end
			it "should render the index view" do
				get :index
				response.should render_template :index
			end
		end 		
		describe 'GET #show' do
			it "assigns the requested product to @product" do
				get :show, id: @product
				assigns(:product).should eq @product
			end
			it "renders the :show template" do				
				get :show, id: @product
				response.should render_template :show
			end
		end
		describe 'GET #new' do
			it "assigns a new product to @product" do
				get :new
				assigns(:product).should be_a_new(Product)
			end
			it "renders the :new template" do
				get :new
				response.should render_template :new
			end
		end
		describe 'GET #edit' do
			it "assigns the requested product to @product" do
				get :edit, id: @product
				assigns(:product).should eq @product
			end
			it "renders the :edit template" do				
				get :edit, id: @product
				response.should render_template :edit
			end
		end		
	end
	context "POST actions " do 
	describe "POST #create -with valid attributes" do
		it "saves the new product in the db" do
			expect{
				post :create, product: attributes_for(:product)
				}.to change(Product, :count).by(1)
			end
			it "redirects to the home page" do
				post :create, product: attributes_for(:product)
				response.should redirect_to admin_products_path
			end			
		end
		describe "POST #create  with invalid attributes" do
			it "does not save the product in the database" do
				expect{
					post :create,
					product: attributes_for(:invalid_product)
					}.to_not change(Product, :count)
				end
			end

		end
	end