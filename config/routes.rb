Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:create,:edit,:update,:toggle]
  root to: 'tasks#index', only: [:index]
  patch '/tasks/:id/toggle', to: 'tasks#toggle', as: 'toggle'
end
