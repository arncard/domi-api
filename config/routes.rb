Rails.application.routes.draw do

  resources :commerces, only: [:index, :show]
end
