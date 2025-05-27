Rails.application.routes.draw do
  get "projects/residentradius_contact_center"
  get "projects/residentradius_depositcloud"
  get "projects/docudynamics"
  get "projects/consultant"
  get "projects/penco"
  get "projects/mobile_apps"
  get "projects/design_systems"
  root 'pages#home'
  
  get 'about', to: 'pages#about'
  get 'projects', to: 'pages#projects'
  get 'contact', to: 'pages#contact'

  # Project detail pages
  get 'projects/residentradius-contact-center', to: 'projects#residentradius_contact_center', as: :residentradius_contact_center
  get 'projects/residentradius-depositcloud', to: 'projects#residentradius_depositcloud', as: :residentradius_depositcloud
  get 'projects/docudynamics', to: 'projects#docudynamics', as: :docudynamics
  get 'projects/consultant', to: 'projects#consultant', as: :consultant
  get 'projects/penco', to: 'projects#penco', as: :penco
  get 'projects/mobile-apps', to: 'projects#mobile_apps', as: :mobile_apps
  get 'projects/design-systems', to: 'projects#design_systems', as: :design_systems
  get 'projects/bubblegumbi', to: 'projects#bubblegumbi', as: :bubblegumbi

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
