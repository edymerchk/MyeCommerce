MyeCommerce::Application.routes.draw do
	
  	scope "admin" do
		resources :products, :categories
	end

  	match '/admin',   to: 'static_pages#admin'  

  	root to: 'static_pages#index'

  	devise_for :users
    
end
