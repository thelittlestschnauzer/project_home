Rails.application.routes.draw do


  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  root to: 'rooms#index'
  
  resources :rooms do
    resources :lists
  end

  get "/pages", to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
