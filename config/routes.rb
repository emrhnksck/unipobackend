Rails.application.routes.draw do
  # post "/signup",to: "users#create"
  # get "/me",to: "users#show"
  # post "/login", to: "sessions#create"
  # delete "/logout", to:"session#destroy"

  resources :users do
    resources :projects, only: [:index, :create]
  end

  resources :projects, except: [:index, :create] do
    resources :users, only: [:index, :create], controller: 'project_memberships'
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
