Rails.application.routes.draw do
  
  resources :products, only: :index do
    resources :orders, only: :create
  end

  resources :orders, only: :index do
  	collection do
  		get 'clean'
  	end
  end

  devise_for :users

  get 'products/:id', to: 'products#show', as: 'product'

  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
