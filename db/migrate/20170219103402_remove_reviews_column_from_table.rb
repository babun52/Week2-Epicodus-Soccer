class RemoveReviewsColumnFromTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :product_id, :integer
    remove_column :reviews, :review, :string
    remove_column :reviews, :user_id, :integer
  end
end
