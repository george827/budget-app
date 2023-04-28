Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'home/index'
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :purchases, only: [:new, :create, :destroy]
  end
end
#  EDITOR="mate --wait" bin/rails credentials:edit