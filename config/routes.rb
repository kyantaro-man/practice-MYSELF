Rails.application.routes.draw do
  
  get 'introductions/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  root "users#show"
  
  resources :users, only: :show do
    resources :notes, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :introductions, only: [:index, :new, :create, :edit, :update]
  end
  
end
