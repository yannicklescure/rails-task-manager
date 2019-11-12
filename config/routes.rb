Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks'
  post '/tasks', to: 'tasks#completed'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create', as: 'tasks'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  # delete '/tasks/:id', to: 'tasks#destroy'
end
