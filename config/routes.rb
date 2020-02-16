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
end
