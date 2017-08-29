Rails.application.routes.draw do
  devise_for :users
  root to: 'films#index'
  resources :films
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
