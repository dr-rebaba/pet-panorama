Rails.application.routes.draw do
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
    resources :orders, only: :index
  end
  resources :reviews, only: :destroy

  resources :orders, only: [:create, :show, :index]
end
