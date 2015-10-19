Rails.application.routes.draw do

  get 'sessions/new'

  get 'posts/new'

  post 'posts/new'

  get 'posts/index'

  post 'posts/index'

  get 'home/index'

  get 'home/about'

  get 'home/contact'

  get 'users/new'

  get '/profile' => 'users#show'

  get 'users/show'

  get 'users/edit'

  get 'users/index'


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'

  resources :users
  resources :posts

  
end
