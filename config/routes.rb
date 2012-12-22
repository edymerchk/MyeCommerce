MyeCommerce::Application.routes.draw do
	
    namespace "admin" do
		  resources :products, :categories
	  end

  	match '/admin',   to: 'admin/products#index'  
  	match '/about',   to: 'static_pages#about'  

  	root to: 'static_pages#home'

  

  	match '/categories/:id',   to: 'categories#show', :as => "category"
  	match '/products/:id',   to: 'products#show', :as => "product"

    

#    resources :products, :only => [:show]
#    resources :cateogories, :only => [:show]

  	devise_for :users
    
end
