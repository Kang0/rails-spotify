Rails.application.routes.draw do

  root 'welcome#home'

  resources :users, only: [] do
    resources :vinyls, only: [:index, :edit, :show, :destroy, :new]
  end
  
  devise_for :users

  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/search', to: 'artists#search'

  resources :vinyls, only: [:create]

  #shallow: true

end
