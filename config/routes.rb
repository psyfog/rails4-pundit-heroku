RailsDevisePundit::Application.routes.draw do
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contacts'

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :publications
end