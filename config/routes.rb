Rails.application.routes.draw do

  get 'home/index'

  root "home#index"
  resources :items, only: :index

end
