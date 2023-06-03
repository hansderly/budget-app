Rails.application.routes.draw do
  devise_for :users
  resources :entities
  resources :groups do
    resources :entities, only: [:new, :create]
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
