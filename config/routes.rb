Rails.application.routes.draw do
  root "links#index"
  resources :links, only: [:index, :show, :create]
end
