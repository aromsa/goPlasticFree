class SharesController < ApplicationController

  def create
    # byebug
    Share.create(shares_params)
    redirect_to user_path(current_user.id)
  end

  private

  def shares_params
    params.permit(:user_id, :product_id)
  end

end
