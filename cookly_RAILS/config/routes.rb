Rails.application.routes.draw do
  root 'home#index'

  namespace :api do 
    resources :cooks, only: [:index, :show, :create, :update, :destroy]

    get '*path' => 'home#index'

  end
end
