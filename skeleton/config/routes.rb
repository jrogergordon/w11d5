Rails.application.routes.draw do
  # Your routes here!
    namespace :api, defaults: { format: :json } do
    resources :guests, only: [:index, :show] do
      resources :gifts, only: [:index]
    end
  end
end
