class Admin::ProductsController < AdminController

  load_and_authorize_resource  

  respond_to :html, :json, :js
  def index
    @products = Product.all
    respond_with(@products)
  end

  def show
    @product = Product.find(params[:id])
    respond_with(@product)
  end


  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    flash[:success] = "Product was successfully created." if @product.save
    respond_with(@product)
  end


  def update
    @product = Product.find(params[:id])
    flash[:success] = "Product was successfully updated." if @product.update_attributes(params[:product])
    respond_with(@product)
   end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end  
  
end
