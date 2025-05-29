Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  get "lists/:id", to: "lists#show", as: :task
  post "lists/create", to: "lists#create"
  get "lists/:id/edit", to: "lists#edit"
  patch "lists/:id", to: "lists#update"
  delete "lists/:id", to: "lists#destroy"
  # Defines the root path route ("/")
  # root "posts#index"
end
