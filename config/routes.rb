Rails.application.routes.draw do
  # resources :categories do
  #   resources :treatments
  # end

  get "categories" => "categories#index"
  get "treatments" => "treatments#index"

end
