Rails.application.routes.draw do
  devise_for :therapists
  
  resources :therapists do
    get 'new_hoja_paciente', on: :collection
  end
  resources :videos
  resources :exploracion_fisicas
  resources :hoja_pacientes do
  resources :exploracion_fisicas
  resources :videos
  end
  resources :pacientes do
  get 'show_hoja_paciente', on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'therapists#index'
end
