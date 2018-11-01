# frozen_string_literal: true

# rubocop:disable all
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:index, :new, :create]
    # resources :ingredients
  end
  resources :doses, only: [:show, :destroy]
end
