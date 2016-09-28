Rails.application.routes.draw do
  devise_for :users
   resources :posts
   
   root "posts#index"
  
  get 'posts/index'
  
  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'


  
end
