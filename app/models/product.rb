class Product < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :product_fundings
  has_many :fundings, through: :product_fundings
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :original_cost, presence: true
  validates :original_cost, numericality: true
  validates :goal_amount, numericality: { only_integer: true }
  validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)\z}i, :message => "Use a real image"
  validates :summary, length: { minimum: 50 }
end
