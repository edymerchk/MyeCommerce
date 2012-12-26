class Admin::ProductsController < AdminController

  before_filter :get_product, :only => [:show, :edit, :update, :destroy]
   load_and_authorize_resource  

  respond_to :html, :json, :js


  def index
    @products = Product.order("name").page(params[:page]).per(10)
    respond_with(@products)
  end

  def show
    
    respond_with(@product)
  end


  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
    
  end

  def create
    
    flash[:success] = "Product was successfully created." if @product.save
    respond_with(@product)
  end


  def update
    
    flash[:success] = "Product was successfully updated." if @product.update_attributes(params[:product])
    respond_with(@product)
   end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end  

  def get_product
    @product = Product.find(params[:id])
  end
  
end
