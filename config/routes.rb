Rails.application.routes.draw do
  get "articles/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  root 'articles#index'
   
  # get 'articles' => 'articles#index'
  # get "/articles/:id" , to: "articles#show"
   
   resources :articles do
    resources :comments
   end

  #  get 'articles' => 'articles#index'
  #  get '/articles/:id' => 'articles#show', as: 'article'
  #  get '/new_article', to: 'articles#new'   
  #  post '/articles' => 'articles#create' 
  #  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  #  patch '/articles/:id' => 'articles#update'
  #  delete '/articles/:id' => 'articles#destroy'

  #  get 'article/new' , to: 'articles#new'
  #  post 'article', to: 'articles#create'

  
end
