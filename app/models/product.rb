class Product < ActiveRecord::Base
  validates :name, :price, :detail, :image, :presence => true

  has_many :reviews
end
