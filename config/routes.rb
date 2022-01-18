Rails.application.routes.draw do
  root "inventory#index"

  resources :inventory
end
