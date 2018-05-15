Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#home", as: :home

  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update


  get "tasks/index", to: "tasks#index", as: :index

  delete "task/:id", to: "tasks#destroy", as: :destroy

   # Read tasks routes here
  get "tasks/:id", to: "tasks#show", as: :task


end
