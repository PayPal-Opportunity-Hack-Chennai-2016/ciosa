class Category < ActiveRecord::Base
  has_many :orders

  has_many :product_categories
  has_many :products, through: :product_categories

  validates :name, presence: true, uniqueness: true
end
