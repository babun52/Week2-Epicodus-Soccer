require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'Nike', :price => 10, :detail => 'No Detail yet', :image => 'None')
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Name', :with => 'Adidas'
    fill_in 'Price', :with => '10'
    fill_in 'Detail', :with => 'No Detail yet'
    fill_in 'Image', :with => 'None'
    click_on 'Update Product'
    expect(page).to have_content 'Adidas'
  end
end
