Rails.application.routes.draw do
  

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'book#index'
  
  
  resources :book do 
    resources :bookpost, only: [:show]
  end
  
end
