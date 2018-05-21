Rails.application.routes.draw do
 
  resources :user_profiles
  resources :events
  resources :weekly_plans
  resources :minutes
  resources :meetings
  resources :projects
  resources :directorates
  resources :sub_gtps
  resources :gtp_planners
  get 'help/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :meeting_types
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
 root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
