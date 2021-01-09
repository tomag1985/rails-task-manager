Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #resources :tasks

  # read
  get 'tasks', to: 'tasks#index', as: :tasks # read
  post 'tasks', to: 'tasks#create' # create
  get 'tasks/new', to: 'tasks#new', as: :new_task # create
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # update
  get 'tasks/:id', to: 'tasks#show', as: :task # read
  patch 'tasks/:id', to: 'tasks#update' # update
  delete 'tasks/:id', to: 'tasks#destroy' # delete
end
