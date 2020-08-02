Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  root "users#show"
  
  resources :users, only: :show do
    resources :notes, only: [:index, :new, :create]
    resources :introductions, only: [:index]
  end
  
end
