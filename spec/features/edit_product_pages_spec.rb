require 'rails_helper'

describe "the edit a product process" do
  before do
    user = FactoryGirl.create(:user, :admin => true)
    visit user_session_path
    fill_in 'Email', :with => 'admin@admin.com'
    fill_in 'Password', :with => 'admin1'
    click_button 'Log in'
    product = FactoryGirl.create(:product, :user_id => user.id)
    visit product_path(product)
  end

  it "edits a product" do
    click_on 'Edit'
    fill_in 'Name', :with => 'Adidas'
    fill_in 'Price', :with => '120'
    fill_in 'Detail', :with => 'Adidas Purecontrol'
    page.attach_file("Image", 'spec/images/purecontrol.png')
    click_on 'Update Product'
    expect(page).to have_content 'Footwears'
  end
end
