class Review < ActiveRecord::Base

  validates :review, :user_id, :presence => true

  belongs_to :user
  belongs_to :product

end
