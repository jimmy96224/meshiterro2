Rails.application.routes.draw do
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :post_images, only: [:new, :index, :show]
  
end
