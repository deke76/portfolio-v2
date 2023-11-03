Rails.application.routes.draw do
  resources :settings, only: [:index]
  resources :details, only: [:index]
  resources :projects, only: [:index, :show]
  resources :messages, only: [:index, :new, :create]
  
  resources :socials, only: [:index] do
    collection do 
      resources :linkedin, only: [:index]
      resources :github, only: [:index] 
      resources :stack_overflow, only: [:index] 
      resources :facebook, only: [:index] 
      resources :instagram, only: [:index] 
      resources :twitter, only: [:index] 
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
