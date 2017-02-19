require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add New Footwear'
    fill_in 'Name', :with => 'Nike'
    fill_in 'Price', :with => '10'
    fill_in 'Detail', :with => 'No Detail yet'
    fill_in 'Image', :with => 'None'
    click_on 'Create Product'
    expect(page).to have_content 'Nike'
  end
end
