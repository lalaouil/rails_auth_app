Rails.application.routes.draw do
  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_up", to: "users#new", as: "sign_up"

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: "users#new", as: "new_user"

  get "/users/:id", to: "users#show", as: "user"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  post "/users", to: "users#create"

  patch "/users/:id", to: "users#update"

  delete "/users/:id", to: "users#destroy"
end
