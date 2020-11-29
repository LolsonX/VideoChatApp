Rails.application.routes.draw do
  get 'dashboard/index'
  root to: 'rooms#index'
  devise_for :users
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
