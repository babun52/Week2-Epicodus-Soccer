class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :review, :presence => true
end
