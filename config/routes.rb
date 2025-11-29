Rails.application.routes.draw do
  # Devise routes
  devise_for :users

  # Boards routes with nested tasks and comments
  resources :boards do
    resources :tasks do
      resources :comments, only: [:create, :destroy]
    end
  end

  # Home
  get "home/index"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest"       => "rails/pwa#manifest",       as: :pwa_manifest

  # Root
  root "boards#index"
end