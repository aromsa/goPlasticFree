class FundingsController < ApplicationController
  def new 
    @funding = Funding.new
  end
  def create

    funding = Funding.create(fund_params)
    session[:funding_id] = funding.id
    # product_funding = Product_Funding.create(funding.id,current_product.id)
    redirect_to new_product_funding_path
  end
  private
  def fund_params
    params.require(:funding).permit! 
  end
end
