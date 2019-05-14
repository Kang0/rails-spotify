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
    resources :reviews, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  end

  resources :comments, only: [:destroy, :edit, :update, :create, :index]

  resources :vinyls, only: [:create, :show]

  #shallow: true

end
