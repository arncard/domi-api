Rails.application.routes.draw do

  devise_for :users
  resources :commerces, only: [:index, :show]
end
