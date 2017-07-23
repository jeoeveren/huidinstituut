Rails.application.routes.draw do
  get "categories" => "categories#index"
  get "labels" => "labels#index"
  get "products" => "products#index"
  get "treatments" => "treatments#index"
  root to: 'pages#home'

  # resources :categories do
  #   resources :treatments
  # end

end
