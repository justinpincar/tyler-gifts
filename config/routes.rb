Rails.application.routes.draw do
  resources :recipients

  resources :traits

  devise_for :users

  root 'home#index'
end

