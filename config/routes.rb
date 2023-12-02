Rails.application.routes.draw do
  get 'cart/show'
  get 'cart/add_item'
  get 'cart/remove_item'

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
  resources :orders

  resource :cart, only: [:show] do
    post 'add_item/:product_id', to: 'carts#add_item', as: :add_item
    delete 'remove_item/:product_id', to: 'carts#remove_item', as: :remove_item
  end
end
