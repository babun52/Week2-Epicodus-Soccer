require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => 'Nike', :price => 10, :detail => 'No Detail yet', :image => 'None')
    visit product_path(product)
    click_on 'Delete'
    expect(page).to have_content 'Footwears'
  end
end
