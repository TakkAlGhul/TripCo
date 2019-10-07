Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'plans#index'

  resources :users

  resources :plans do
    collection do
      get 'search'
    end
    
    resources :contents
  end
 
end
