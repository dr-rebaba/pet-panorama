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

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products do
    resources :reviews, only: :create
  end
  resources :reviews, only: :destroy

  resource :cart, only: [:show]
  resources :cart_products, only: [:create, :destroy]

  resources :orders
end
