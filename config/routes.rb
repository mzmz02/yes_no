Rails.application.routes.draw do
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new" #User新規登録
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  
  get "login" => "users#login_form" 
  post "login" => "users#login"
  
  post "logout" => "users#logout"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/show" => "posts#show"

  post "posts/yes" => "posts#yes"
  post "posts/no" => "posts#no"

  
  
  post "posts/stop" => "posts#stop"
  post "posts/start" => "posts#start"
end
