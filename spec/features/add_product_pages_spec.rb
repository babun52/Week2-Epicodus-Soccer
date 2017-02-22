require 'rails_helper'

describe "the add a product process" do
  before do
    admin = FactoryGirl.create(:admin)
    visit user_session_path
    fill_in 'Email', :with => admin.email
    fill_in 'Password', :with => admin.password
    click_button 'Log in'
  end

  it "adds a new product" do
    visit products_path
    click_link 'Add New Footwear'
    fill_in 'Name', :with => 'Superfly'
    fill_in 'Price', :with => '120'
    fill_in 'Detail', :with => 'Nike Superfly'
    page.attach_file('product_image', Rails.root + 'spec/images/superfly.png')
    click_on 'Create Product'
    expect(page).to have_content 'Superfly'
  end
end
