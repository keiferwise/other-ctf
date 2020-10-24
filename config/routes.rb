Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'articles/manage'
  get '/admin/challenges' =>'challenges#manage_challenges'
  get '/admin/challenges/:id' => 'challenges#manage_challenge'
  get '/challenges' => 'challenges#index'
  resources :articles
  resources :users
  resource :user_session
  resources :users, only: [:new, :create]
  resources :challenges, only: [:show ]
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
