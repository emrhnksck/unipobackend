Rails.application.routes.draw do
  post "/signup",to: "users#create"
  # get "/me",to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to:"session#destroy"
  post "/project_create", to:"projects#create"
  post "project_membership", to:"project_memberships#create"
  post "all_projects", to:"projects#index"
  post "get_user", to:"users#show"
  post "approve", to:"project_memberships#toggle_is_approved"
  post "get_memberships", to:"project_memberships#index"
  post "/projects/:project_id/todos", to:"todos#index"
  post "university_projects", to:"projects#university_projects"
  post "user_projects", to:"project_memberships#user_projects"
  post "get_project", to:"projects#show"

  resources :users do
    resources :projects, only: [:index, :create]
  end

  resources :projects, except: [:index] do
    resources :users, only: [:index, :create], controller: 'project_memberships'
    resources :todos, except: [:index]
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
