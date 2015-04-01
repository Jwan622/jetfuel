Rails.application.routes.draw do
  root "links#index"

  namespace :api do
    namespace :v1 do
      resources :links, only: [:index]
    end
  end

  resources :links, only: [:index, :show, :create]
end
