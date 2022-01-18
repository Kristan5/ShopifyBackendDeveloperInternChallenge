Rails.application.routes.draw do
  root "inventory#index"

  post "/inventory/new", to: "inventory#create"

  resources :inventory
end
