Rails.application.routes.draw do

  
  get 'favorite_artist/new'
  get 'favorite_artist/create'
  get 'venues/show'
  # welcome
  get '/welcome/home', to: "welcome#home", as: "home"

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

  # events
  get "/events/:id", to: "events#show", as: "event"

  # venues
  get "/venues/:id", to: "venues#show", as: "venue"

  # sessions
  delete '/sessions/reset', to: 'sessions#reset_page_visits', as: 'page_reset'

  # favorite artists
  get '/favorite_artists/new', to: 'favorite_artists#new', as: 'new_favorite_artist'
  post '/favorite_artists', to: 'favorite_artists#create'
  
end
