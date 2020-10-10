Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'cmon_let_me_in' },
    controllers: {
      registrations: 'users/registrations'
    }
  resources :posts do
    member do
      put "like", to: "posts#like" 
    end
  end
  root 'posts#index'
  get 'static_pages/index'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
