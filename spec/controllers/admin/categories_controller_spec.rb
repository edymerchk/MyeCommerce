require "spec_helper"

describe Admin::CategoriesController do
	
	context "CRUD functions" do
		before :each do
			@category =create(:category)
			@user = create(:user, admin: true)
			sign_in @user 
		end     
		describe "GET #index" do
			it "should show a list of @categories" do           
				get :index
				assigns(:categories).should == [ @category ]
			end
			it "should render the index view" do
				get :index
				response.should render_template :index
			end
		end 		
		describe 'GET #show' do
			it "assigns the requested category to @category" do
				get :show, id: @category
				assigns(:category).should eq @category
			end
			it "renders the :show template" do				
				get :show, id: @category
				response.should render_template :show
			end
		end
		describe 'GET #new' do
			it "assigns a new category to @category" do
				get :new
				assigns(:category).should be_a_new(Category)
			end
			it "renders the :new template" do
				get :new
				response.should render_template :new
			end
		end
		describe 'GET #edit' do
			it "assigns the requested category to @category" do
				get :edit, id: @category
				assigns(:category).should eq @category
			end
			it "renders the :edit template" do				
				get :edit, id: @category
				response.should render_template :edit
			end
		end
		describe "POST #create -with valid attributes" do
			it "saves the new category in the db" do
				expect{
					post :create, category: attributes_for(:category)
					}.to change(Category, :count).by(1)
			end
			it "redirects to the home page" do
				post :create, category: attributes_for(:category)
				response.should redirect_to admin_categories_path
			end			
		end
		describe "POST #create -with invalid attributes" do
			it "does not save the category in the database" do
				expect{
				post :create,
				category: attributes_for(:invalid_category)
				}.to_not change(Category, :count)
			end
		end
	end
end