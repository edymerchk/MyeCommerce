class Admin::CategoriesController < ApplicationController
  respond_to :html, :json, :js


   before_filter :get_category, :only => [:show, :edit, :update, :destroy]
   load_and_authorize_resource  


  def index
    @categories = Category.all
    respond_with(@categories)

  end


  def show
     respond_with(@category)
  end


  def new
    @category = Category.new
    respond_with(@category)
  end

  def edit
    
  end


  def create

     @category = Category.new(params[:category])
    flash[:success] = "Category was successfully created." if @category.save
    redirect_to(admin_categories_path)

  end

  def update
    
    flash[:success] = "Category was successfully updated." if @category.update_attributes(params[:category])
    redirect_to(admin_categories_path)
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path    
  end

  def get_category
    @category = Category.find(params[:id])
  end

end
