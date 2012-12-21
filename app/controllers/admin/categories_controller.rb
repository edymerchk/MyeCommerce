class Admin::CategoriesController < ApplicationController
  respond_to :html, :json, :js

   before_filter :authenticate_user!
   load_and_authorize_resource  


  def index
    @categories = Category.all
    respond_with(@categories)

  end


  def show
    @category = Category.find(params[:id])
    respond_with(@category)
  end


  def new
    @category = Category.new
    respond_with(@category)
  end

  def edit
    @category = Category.find(params[:id])
  end


  def create

    load_and_authorize_resource
    @category = Category.new(params[:category])
    flash[:success] = "Category was successfully created." if @category.save
    redirect_to(categories_path)

  end

  def update
    @category = Category.find(params[:id])
    flash[:success] = "Category was successfully updated." if @category.update_attributes(params[:category])
    redirect_to(categories_path)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end

  def show_category

    @category = Category.find(params[:id])
    @products = @category.products.in_stock
    render :layout => 'store_layout'
    
  end
end
