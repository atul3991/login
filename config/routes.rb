Rails.application.routes.draw do
  get 'static_pages/index'
  get 'users/index'

  root 'users#index'
  resources :users
  post 'login' => 'sessions#create'
end