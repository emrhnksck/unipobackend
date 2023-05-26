Rails.application.routes.draw do
  post "/signup",to: "users#create"
  get "/me",to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to:"session#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
