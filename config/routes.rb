Rails.application.routes.draw do


  resources :post_tags
  resources :tags
  root 'blogs#show', {id: 1}



  resources :blogs do
    resources :posts
  end
  resources :users
  get 'welcome/index'


  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end


  # Point /about to the first post of the first blog
  get '/about', to: 'posts#show', blog_id: 1, id: 1










end
