Rails.application.routes.draw do
  root 'promises#index'
  resources :promises, only: [:new, :create, :index, :show, :destroy, :update]
end
