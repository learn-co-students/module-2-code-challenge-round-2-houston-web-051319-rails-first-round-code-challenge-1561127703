Rails.application.routes.draw do
  resources :powers
  resources :heroines 
  get "/search/hero", to: 'heroines#search'
end
