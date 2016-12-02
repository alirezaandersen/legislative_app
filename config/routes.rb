Rails.application.routes.draw do

  # resources :bills, only: [:index]

  root to: 'welcome#index'

  resources :bills
end
