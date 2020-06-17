class ProductFundingsController < ApplicationController
  def new
    @product_funding = ProductFunding.new
  end
  def create
    product_funding = ProductFunding.create(pf_params)
    redirect_to product_path(current_product.id)
  end
  private
  def pf_params
    params.require(:product_funding).permit!
  end
end
