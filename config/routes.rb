Rails.application.routes.draw do
  devise_for :users
  root 'plans#index'

  resources :users

  resources :plans do
    collection do
      get 'plans' 
    end
    
    resources :contents
  end
 
end
