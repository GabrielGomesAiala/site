Rails.application.routes.draw do


  # inicio adimin
  get 'signup'  => 'users#new'

  resources :users

  get '/admin' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/admin/capas' => 'capas#index'
  get '/admin/capas/new' => 'capas#new'
  post 'capas' => 'capas#create'


  get'/admin/produtos' => 'produtos#admin'
  get'/admin/produtos/new' => 'produtos#new'
  
  post'produtos' => 'produtos#create'


  get '/admin/produtos/images/:id' => 'fotos#show'
  get'/admin/produtos/new/:id' => 'fotos#new'

  post 'fotos/' => 'fotos#create'

  #incio site

  get 'welcome/index' => 'welcome#index'
  root 'welcome#index'
  get 'quemsomos' => 'quemsomos#index'

  get '/produtos' => 'produtos#index'
  get '/produtos/:id' => 'produtos#show'
  get '/:tipo' => 'produtos#itens'

  resources :produtos
  resources :fotos
  resources :capas

end
