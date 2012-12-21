class CategoriesController < ApplicationController
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

end
