Rails.application.routes.draw do
  root to: 'home#index'

  resources :home, only: [:create] do
    collection do
      get 'simulator2'
      get 'simulator3'
      get 'simulator4'
      get 'simulator5'
    end
  end

  resources :lists, only: [:index] do
    resources :messages, only: [:create]
    collection do
      get 'search'
    end
    member do
      get 'company'
      get 'kuchikomi'
    end
  end

  resources :ranking, only: [:index]
end
