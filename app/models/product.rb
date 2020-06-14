class Product < ApplicationRecord
  belongs_to :user
  has_many :product_fundings
  has_many :fundings, through: :product_fundings
end
