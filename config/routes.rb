Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :object_tables
  resources :root_tables
  ActiveAdmin.routes(self)
  get "db" => "db#root_table"
=======
  
  resources :no_groups
  resources :doppelte_objects
  resources :root_externaldocuments
  resources :root_collections
  resources :root_objects
  get 'welcome/index'
  root 'welcome#index'
  resources :search_collections
  resources :imp_search_objects
  resources :object_tables
  resources :relassignproperties
  resources :relassignmeasures
  resources :relassignpropertywithvalues
  resources :relassignvalues
  resources :relassignunits
  resources :relsequences
  resources :typerelsequences
  resources :typevalues
  resources :values
  resources :measurewithunits
  resources :units
  resources :activities
  resources :actors
  resources :relassociates
  resources :typerelassociates
  resources :typecollections
  resources :reldocuments
  resources :relassigncollections
  resources :relationships
  resources :externaldocuments
  resources :relcollects
  resources :root_tables 
  resources :properties
  resources :subjects
  resources :collections
  resources :objlistendb4s
>>>>>>> 8e31398c502b5332a4908c846796eb04e6245ac6
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
