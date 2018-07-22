# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  namespace 'api' do
    resources :drug_types
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
