Rails.application.routes.draw do
  resources :prisons, only: [:show] do
    resources :criminals, only: [:new, :create]
  end
  resources :criminals, only: [:destroy] do
    resources :convictions, only: [:new, :create]
  end
end
