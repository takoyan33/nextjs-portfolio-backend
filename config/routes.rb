Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :histories
      resources :jobs
      resources :licenses
      resources :portfolios
      resources :front_skills
      resources :back_skills
      resources :infra_skills
      resources :other_skills
    end
  end
end
