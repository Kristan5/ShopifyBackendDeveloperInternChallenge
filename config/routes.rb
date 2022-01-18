Rails.application.routes.draw do
  root "inventory#index"
  
  get "/inventory", to: "inventory#index"
end
