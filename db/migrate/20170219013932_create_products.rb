class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :image, :string
      t.column :name, :string
      t.column :price, :integer
      t.column :detail, :string
    end
  end
end
