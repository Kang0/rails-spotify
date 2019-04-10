Rails.application.routes.draw do

  root 'welcome#home'
  get '/about', to: 'welcome#about'

  resources :users, only: [] do
    resources :vinyls, only: [:index, :show, :destroy, :create]
  end

  resources :vinyls, only: [:create, :index]
  
  devise_for :users

  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/search', to: 'artists#search'

  resources :albums, only: [:show, :index] do
    resources :reviews
  end

  #shallow: true

end
