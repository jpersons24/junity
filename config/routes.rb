Rails.application.routes.draw do

  resources :users
  resources :artists, only: [:index, :show]
  
end
