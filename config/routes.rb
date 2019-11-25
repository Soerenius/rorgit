Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :object_tables
  resources :root_tables
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
