Rails.application.routes.draw do
  resources :settings, only: [:index]
  resources :details, only: [:index]
  resources :projects, only: [:index]
  resources :contacts, only: [:index]
  resources :socials, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
