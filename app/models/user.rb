class User < ApplicationRecord
  has_many :fundings
  has_many :product_fundings, through: :fundings
  has_many :products
  has_many :shares
  has_many :products, through: :shares

  def funded_products
    self.product_fundings.map do |pf| 
      pf.product
    end
  end

  def shared_products
    self.shares.map do |s|
      s.product
    end
  end

  def update_status
    if self.funded_products.count >= 10
      self.update(status: "Tree Status")
    elsif self.funded_products.count >= 5
      self.update(status: "Sprout Status")
    else self.funded_products.count < 5
      self.update(status: "Seed Status")
    end
    self.status
  end

end
