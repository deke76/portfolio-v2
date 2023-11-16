Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :settings, only: [:index]
  resources :details, only: [:index, :show]
  resources :projects, only: [:index, :show]
  resources :messages, only: [:index, :show, :new, :create]
  resources :socials, only: [:index, :show]

  # Defines the root path route ("/")
  root "pages#index"
end
