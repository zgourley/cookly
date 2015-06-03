Rails.application.routes.draw do

resources :cooks

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
