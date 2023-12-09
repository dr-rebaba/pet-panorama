Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'reviews/create'
  get 'reviews/destroy'

  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/show'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'

  get 'profile', to: 'users#show', as: :user_profile

  post 'update_product', to: 'carts#update_product', as: :update_product
  delete 'remove', to: 'carts#remove', as: :remove_product

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products do
    resources :reviews, only: :create
  end
  resources :users
  resources :reviews, only: :destroy

  resources :carts, only: [:show]
  resources :cart_products, only: [:create, :destroy]

  resources :orders, only: [:create, :show, :index]
  resources :order_products, only: [:create, :destroy]


end
