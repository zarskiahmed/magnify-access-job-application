Rails.application.routes.draw do
  resources :employee_submissions, only: [:new, :create, :index]
  get '/human_resources', to: 'human_resources#index'
  root to: 'employee_submissions#new'
end
