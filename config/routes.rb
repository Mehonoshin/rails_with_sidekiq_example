require 'sidekiq/web'

Rails.application.routes.draw do
  resources :posts
  root to: 'posts#index'

  mount Sidekiq::Web => '/sidekiq'
end
