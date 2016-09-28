Rails.application.routes.draw do
  devise_for :authors
  resources :posts
  root 'posts#index'
end
