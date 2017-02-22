include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :product do
    name('Superfly')
    price('120')
    detail('Nike Superfly')
    image { fixture_file_upload(Rails.root.join('spec', 'images', 'superfly.png'), 'image/jpg') }
  end
end
