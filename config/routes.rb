Rails.application.routes.draw do
  root to: 'items#index'
  resources :descriptions, only: [:index]

end
