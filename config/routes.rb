Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  devise_for :users

  # Dashboard
  namespace :dashboard do
    get '', to: 'home#index'
  end

  # Application
  root to: 'home#index'
  resource :contact, only: [:create]
  resource :newsletter, only: [:create, :destroy]
end
