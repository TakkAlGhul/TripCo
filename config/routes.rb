Rails.application.routes.draw do
  devise_for :users
  root 'plans#index'

  resources :users

  resources :plans do
    collection do
      get 'plans' 
      get 'search'
    end
    
    resources :contents
  end
 
end
