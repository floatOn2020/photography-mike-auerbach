Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'
  devise_for :users
  resources :categories
  resources :shootings, except: [:index]
  get 'category', to: 'categories#filter_categories_for_links', as: 'this_category'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
