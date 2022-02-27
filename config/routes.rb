Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "applications#index"

  # get "example", to: "example#show"
  # get "/applications", to: "applications#index"
  # get "/applications/:id", to "applications#show"

  resources :applications

end
