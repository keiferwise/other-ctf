Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'articles/manage'
  get '/admin/challenges' =>'admin#manage_challenges'
  resources :articles
  resources :users
  resource :user_session
  resources :users, only: [:new, :create]
  resources :challenges
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
