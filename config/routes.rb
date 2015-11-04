Rails.application.routes.draw do

  # get 'items/create'

  devise_for :users
  resources :users, except: [:index] do
    resources :items, only: [:create, :destroy]
  end


  get 'welcome/index'
  root to: 'welcome#index'


end
