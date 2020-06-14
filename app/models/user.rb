class User < ApplicationRecord
  has_many :fundings
  has_many :products

end
