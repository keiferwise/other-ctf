Rails.application.routes.draw do
  #welcome
  get 'welcome/index'
  root 'welcome#index'
  #admin
  get '/admin' => 'admin#index'
  #admin articles
  get  '/admin/articles' => 'articles#manage'
  #admin challenges
  get '/admin/challenges'     =>'challenges#manage'
  get '/admin/challenges/new' => 'challenges#new'
  get '/admin/challenges/:id' => 'challenges#edit'  
  #admin teams
  get '/admin/teams'      => 'teams#manage'
  get '/admin/teams/new'  => 'teams#new'
  #get '/admin/teams/:id'  => 'teams#edit'
  #admin users
  get '/admin/users'      => 'users#manage'
  get '/admin/users/new'  => 'users#new'
  #get '/admin/users/:id'  => 'users#edit'
  #admin flags
  get '/admin/flags'      => 'flags#manage'
  get '/admin/flags/new'  => 'flags#new'
  #get '/admin/flags/:id'  => 'flags#edit'
  #resources
  resources :articles
  resources :users
  resource :user_session
  resources :users,       only: [:index, :show, :create, :update, :edit]
  resources :challenges,  only: [:index, :show, :create, :update, :edit]
  resources :teams,       only: [:index, :show, :create, :update, :edit]
  resources :flags,       only: [:index, :show, :create, :update, :edit]
  resources :sponsors,    only: [:index, :show, :create, :update, :edit]
  resources :people,      only: [:index, :show, :create, :update, :edit]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
