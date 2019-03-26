Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:index, :show], param: :slug
  resources :not_found, only: :index
  resources :categories, only: :show, param: :slug
end
