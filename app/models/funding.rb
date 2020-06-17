class Funding < ApplicationRecord
  belongs_to :user
  has_many :product_fundings
  has_many :products, through: :product_fundings


  def create_funding
    self << product
  end

end
