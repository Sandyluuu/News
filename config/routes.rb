Rails.application.routes.draw do
  resources :posts
  devise_for :users
  
  get "home/index"

  authenticated :users do
    root 'post#index', as: :authenticate_root
  end

  devise_scope :users do
    root "home#index"
  end
  
end
