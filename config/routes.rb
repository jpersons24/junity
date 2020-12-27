Rails.application.routes.draw do

  # welcome
  get '/welcome/home', to: "welcome#home", as: "home"

  # home

  # artists
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "new_artist"
  post "/artists", to: "artists#create"
  get "/artists/:id", to: "artists#show", as: "artist"
  get "/artists/:id/edit", to: "artists#edit", as: "edit_artist"
  patch "/artists/:id", to: "artists#update"

  # users
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  
end
