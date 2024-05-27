Rails.application.routes.draw do
  resources :registrations, only: [:new, :create, :index]
  resources :orders, only: [:index, :show, :create, :new] # Оголошення лише одного разу
  root 'registrations#index'
end
