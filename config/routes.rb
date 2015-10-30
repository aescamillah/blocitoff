Rails.application.routes.draw do

  get 'items/create'

  devise_for :users
  resources :users do
    resources :items, only: [:create]
  end


  get 'welcome/index'
  root to: 'welcome#index'


end
