Rails.application.routes.draw do

get 'welcome/index'

root 'welcome#index'

get 'users/login' => 'sessions#new'
post 'users/login' => 'sessions#create'
delete 'users/logout' => 'sessions#destroy'

get 'cooks/login' => 'cookssessions#new'
post 'cooks/login' => 'cookssessions#create'
delete 'cooks/logout' => 'cookssessions#destroy'  

resources :cooks

resources :users 

resources :meals



  #Cooks routes
  # get "cooks" => "cooks#index"
  # get "cooks/:id" => "cook#show", as: :cook
  # get "cooks/new" => "cook#new", as: :new_cook
  # post "cooks" => "cook#create"
  # get "cooks/:id/edit" => "cook#edit", as: :edit_cook
  # put "cooks/:id" => "cooks#update"
  # patch "cooks/:id" => "cooks#update"
  # delete "cooks/:id" => "cooks#destroy"
end
