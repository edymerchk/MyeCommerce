MyeCommerce::Application.routes.draw do
	

    #common
    match '/admin',   to: 'admin/products#index'  
    match '/about',   to: 'static_pages#about'  

    root to: 'static_pages#home'

    #back-end
    namespace "admin" do
		  resources :products, :categories
	  end

    #front-end Store

  	match '/categories/:id',   to: 'categories#show', :as => "category"
  	match '/products/:id',   to: 'products#show', :as => "product"


    match '/add_item/:id',   to: 'items#add', :as => "add_item"
    match '/remove_item/:id',   to: 'items#remove', :as => "remove_item"

    resources :carts, only: [:show, :destroy]




    

#    resources :products, :only => [:show]
#    resources :cateogories, :only => [:show]

  	devise_for :users
    
end
