Rails.application.routes.draw do
  root "inventory#index"

  get '/inventory', to: "inventory#index"

  delete '/inventory.:id', to: "inventory#destroy"

  post "/inventory/new", to: "inventory#create"
  post "/inventory/:id/edit", to: "inventory#update"

  resources :inventory
end
