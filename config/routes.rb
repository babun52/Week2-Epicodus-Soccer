Rails.application.routes.draw do
  root to: 'landing#index'
  devise_for :users, :controllers => { registrations: 'registrations' }, path_names: {sign_in: "login", sign_up: "signup",sign_out: "logout"}

  resources :about

  resources :products do
    resources :reviews
  end
end
