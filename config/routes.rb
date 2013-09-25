Survey::Application.routes.draw do
  resources :polls, only: [:index, :new, :create, :show]
  root to: 'polls#index'
end
