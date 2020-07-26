Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'
  devise_for :users
  resources :categories, except: [:index, :show]
  resources :shootings
  get 'imprint', to: 'pages#imprint'
end
