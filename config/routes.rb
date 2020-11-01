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
  #admin teams
  get '/admin/teams'      => 'teams#manage'
  get '/admin/teams/new'  => 'teams#new'
  #admin users
  get '/admin/users'      => 'users#manage'
  get '/admin/users/new'  => 'users#new'
  #admin flags
  get '/admin/flags'      => 'flags#manage'
  get '/admin/flags/new'  => 'flags#new'
  #admin sponsors
  get '/admin/sponsors'   => 'sponsors#manage'
  get '/admin/sponsors/new'   => 'sponsors#new'
  #admin people
  get '/admin/people'     => 'people#manage'
  get '/admin/people/new' => 'people#new'
  #resources
  resources :articles
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
