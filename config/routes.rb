# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :queues, only: %i[create]
    resources :messages, only: %i[index create]
  end
end
