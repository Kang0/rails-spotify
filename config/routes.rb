Rails.application.routes.draw do

  root 'welcome#home'
  get '/about', to: 'welcome#about'
  get '/contact', to: 'welcome#contact'

  resources :users, only: [] do
    resources :vinyls, only: [:index, :show, :destroy, :create]
  end
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/search', to: 'artists#search'

  resources :albums, only: [:show, :index] do
    resources :reviews
  end

  resources :comments, only: [:create]

  resources :vinyls, only: [:create, :show]

  #shallow: true

end
