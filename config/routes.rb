Rails.application.routes.draw do
  root to: 'home#index'

  resources :cats, only: %i[index show]
  resources :people, only: %i[index show]
end
