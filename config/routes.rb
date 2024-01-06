# config/routes.rb

Rails.application.routes.draw do
  resources :case_reports, only: %i[index show]
end
