class Funding < ApplicationRecord
  belongs_to :user
  has_many :product_fundings
  has_many :products, through: :product_fundings
end
