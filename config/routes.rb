Rails.application.routes.draw do
  get "categories" => "categories#index"
  # get "labels" => "labels#index"
  post "labels" => "labels#index"
  get "products" => "products#index"
  get "treatments" => "treatments#index"
  root to: 'pages#home'

  resources :labels, only: :index do
    collection do
      get  :sort_name
      get  :sort_show_order
      get  :sort_visible
      post :jeroentje
    end
  end


end
