Rails.application.routes.draw do
  resources :promises, only: [:new, :create, :index, :show, :delete, :update]
end
