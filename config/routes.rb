Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'tasks#index'
  # get '/', to: 'tasks#new'
  # post '/tasks', to: 'tasks#create'
  resources :tasks, path: '/', only: [:index,:create,:edit,:update,:toggle]
  patch '/tasks/:id/toggle', to: 'tasks#toggle', as: 'toggle'
end
