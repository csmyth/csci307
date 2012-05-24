AGWebApp::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]

  resources :privileges

  resources :observations

  resources :clients

  resources :contacts

  resources :projects

  resources :red_flags

  resources :assignments
  
  resources :roles

  resources :supports
end
