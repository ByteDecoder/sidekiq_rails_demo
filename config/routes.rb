require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  post 'visitors/contact', to: 'visitors#contact'
  root 'visitors#index'
end
