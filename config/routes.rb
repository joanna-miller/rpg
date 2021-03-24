Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  resources :items

  resources :locations do
    resources :monsters
  end

  

end
