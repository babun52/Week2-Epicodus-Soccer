Rails.application.routes.draw do
  root to: 'landing#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
