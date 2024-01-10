# config/routes.rb

Rails.application.routes.draw do
  resources :case_reports, only: %i[index show]
  resources :case_reports_filters, only: %i[index]
end
