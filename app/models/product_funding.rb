class ProductFunding < ApplicationRecord
  belongs_to :product 
  belongs_to :funding
end
