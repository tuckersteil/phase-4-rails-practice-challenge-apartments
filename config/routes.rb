Rails.application.routes.draw do
post "/leases", to: "leases#create"
  resources :apartments
  resources :tenants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
