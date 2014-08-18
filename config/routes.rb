require 'sidekiq/web'

ColorChooser::Application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root "colors#index"
  resources :colors, only: :index
end
