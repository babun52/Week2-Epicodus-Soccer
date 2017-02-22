require 'rails_helper'

describe "the add a review process" do
  before do
    user = FactoryGirl.create(:user)
    visit user_session_path
    fill_in 'Email', :with =>'john@john.com'
    fill_in 'Password', :with => '123456'
    click_on 'Log in'
    product = FactoryGirl.create(:product, :user_id => user.id)
    visit product_path(product)
  end

  it "adds a new review" do
    click_link 'Write a review'
    fill_in 'Review', :with => 'Review Test'
    click_on 'Create Review'
    expect(page).to have_content 'Review Test'
  end
end
