require 'rails_helper'

describe 'the create a user process' do
  it 'will create a user' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'john@john.com'
    fill_in 'Password', :with => '123456', :match => :first
    fill_in 'Password confirmation', :with => '123456'
    click_button 'Sign up'
    expect(page).to have_content('Signed in as john@john.com')
  end
end
