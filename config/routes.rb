Rails.application.routes.draw do
  #welcome
  get 'welcome/index'
  root 'welcome#index'
  #admin
  get '/admin' => 'admin#index'
  #admin articles
  get  '/admin/articles' => 'articles#manage'
  #admin challenges
  get '/admin/challenges' =>'challenges#manage'
  get '/admin/challenges/new' => 'challenges#new'
  get '/admin/challenges/:id' => 'challenges#edit'  
  #admin teams
  get '/admin/teams' => 'teams#manage'
  get '/admin/teams/new' => 'teams#new'
  get '/admin/teams/:id' => 'teams#edit'
  resources :articles
  resources :users
  resource :user_session
  resources :users, only: [:new, :create]
  resources :challenges, only: [:index, :show, :create, :update, :edit ]
  resources :teams, only: [:index,:show]
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
