Rails.application.routes.draw do
  root "inventory#index"

  post "/inventory/new", to: "inventory#create"
  post "/inventory/:id/edit", to: "inventory#update"

  resources :inventory
end
