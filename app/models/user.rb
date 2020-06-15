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
    self.
  end

  def user_status
    if self.funded_products.count >= 0
      self.update(seed_status:true)
      self.update(sprout_status:false)
      self.update(tree_status:false)
    elsif self.funded_products.count >= 5
      self.update(seed_status:false)
      self.update(sprout_status:true)
      self.update(tree_status:false)
    else self.funded_products.count >= 10
      self.update(seed_status:false)
      self.update(sprout_status:false)
      self.update(tree_status:true)
    end
  end


end
