Rails.application.routes.draw do
  resources :post_hottests
  resources :post_hotters
  resources :post_hots
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
