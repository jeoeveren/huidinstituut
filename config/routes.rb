Rails.application.routes.draw do
  get "categories" => "categories#index"
  get "labels" => "labels#index"
  get "products" => "products#index"
  get "treatments" => "treatments#index"
  root to: 'pages#home'

  resources :labels do
    collection do
      get :sort_name
      get :sort_show_order
      get :sort_visible
    end
  end

end
