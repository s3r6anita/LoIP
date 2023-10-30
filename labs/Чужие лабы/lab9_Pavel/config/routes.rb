Rails.application.routes.draw do
  get 'number/input'
  get 'number/view'

  root "number#input"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
