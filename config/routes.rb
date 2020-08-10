Rails.application.routes.draw do
  root 'items#new'

  resources :items, only: [:index,:new,:create]

end
