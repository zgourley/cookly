Rails.application.routes.draw do
  namespace :api do 
    resources :cooks, only: [:index, :show, :create, :update, :destroy]
  end
end
