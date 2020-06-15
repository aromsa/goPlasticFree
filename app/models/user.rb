class User < ApplicationRecord
  has_many :fundings
  has_many :products
  has_many :shares
  has_many :products, through: :shares
end
