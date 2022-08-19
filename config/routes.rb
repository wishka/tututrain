# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  resources :trains do
    resource :routes
  end
  resources :stations
end
