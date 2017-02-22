FactoryGirl.define do
  factory :user do
    email 'john@john.com'
    password '123456'
    password_confirmation '123456'
  end

  factory :admin, :class => User do
    email 'admin@admin.com'
    password 'admin1'
    password_confirmation 'admin1'
    admin true
  end
end
