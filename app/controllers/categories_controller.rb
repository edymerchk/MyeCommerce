class CategoriesController < ApplicationController
  respond_to :html, :json, :js


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
end
