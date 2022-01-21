Rails.application.routes.draw do
  resources :tweets
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
