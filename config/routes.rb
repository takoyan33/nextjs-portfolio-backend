Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  namespace 'api' do
    namespace 'v1' do
      resources :posts, only: [:index]
      resources :histories, only: [:index]
      resources :jobs, only: [:index]
      resources :licenses, only: [:index]
      resources :portfolios, only: [:show, :index]
      resources :front_skills, only: [:index]
      resources :back_skills, only: [:index]
      resources :infra_skills, only: [:index]
      resources :other_skills, only: [:index]
    end
  end
end
