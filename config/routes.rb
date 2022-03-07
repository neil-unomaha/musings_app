Rails.application.routes.draw do
  resources :medium_types
  resources :labels_posts
  resources :posts
  resources :labels
  resources :authors
  resources :upload_musings_dbs, only: [:index, :create]
  root to: 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
