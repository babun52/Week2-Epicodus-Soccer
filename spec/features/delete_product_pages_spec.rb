require 'rails_helper'

describe "the delete a product process" do
  before do
    user = FactoryGirl.create(:user, :admin => true)
    visit user_session_path
    fill_in 'Email', :with => 'admin@admin.com'
    fill_in 'Password', :with => 'admin1'
    click_button 'Log in'
    product = FactoryGirl.create(:product, :user_id => user.id)
    visit product_path(product)
  end

  it "deletes a product" do
    click_on 'Delete'
    expect(page).to have_content 'Footwears'
  end
end
