MyeCommerce::Application.routes.draw do
	

    #common
    match '/admin',   to: 'admin/products#index'  
 
    (StaticPagesController.action_methods - ApplicationController.action_methods).each do |am|
      match "/#{am}" => "static_pages##{am}"
    end

    root to: 'static_pages#home'

    #back-end
    namespace "admin" do
		  resources :products, :categories
	  end

    #front-end Store

  


    match '/add_item/:id',   to: 'items#add', :as => "add_item"
    match '/remove_item/:id',   to: 'items#remove', :as => "remove_item"

    resources :carts, only: [:show, :destroy]
    
    resources :products, :only => [:show]
    resources :categories, :only => [:show]

  	devise_for :users
    
end
