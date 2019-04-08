Rails.application.routes.draw do

  root 'welcome#home'

  devise_for :users

  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/search', to: 'artists#search'

end
