# frozen_string_literal: true

Pay::Engine.routes.draw do
  resources :payments, only: [:show], module: :pay
  post "webhooks/stripe", to: "pay/hooks/stripe#create"
  post "webhooks/braintree", to: "pay/hooks/braintree#create"
  post "webhooks/paddle", to: "pay/hooks/paddle#create"
end
