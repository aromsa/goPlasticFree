class ProductsController < ApplicationController
  def index 
    @products = Product.all
  end 
  def show
    @product = Product.find(params[:id])
    session[:product_id] = @product.id
  end

  def new
    @product = Product.new
  end
  def create 
    product = Product.create(create_params)
    redirect_to product_path(product.id)
  end
  private
  def create_params
    params.require(:product).permit! 
  end
end
