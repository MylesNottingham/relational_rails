Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/resorts", to: "resorts#index"
  post "/resorts", to: "resorts#create"
  get "/resorts/new", to: "resorts#new"
  get "/resorts/:id", to: "resorts#show"
  patch "/resorts/:id", to: "resorts#update"
  delete "/resorts/:id", to: "resorts#destroy"
  get "/resorts/:id/edit", to: "resorts#edit"

  get "/resorts/:id/guests", to: "resorts/guests#index"
  post "/resorts/:id/guests", to: "resorts/guests#create"
  get "/resorts/:id/guests/new", to: "resorts/guests#new"
  # get "/resorts/:id/guests?sorted=true", to: "resorts/guests#index"

  get "/guests", to: "guests#index"
  get "/guests/:id", to: "guests#show"
  patch "/guests/:id", to: "guests#update"
  delete "/guests/:id", to: "guests#destroy"
  get "/guests/:id/edit", to: "guests#edit"
end
