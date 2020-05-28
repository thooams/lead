Rails.application.routes.draw do
  root to: 'pages#home'
  resources :campaigns, only: [:index]
  devise_for :influencers, controllers: { omniauth_callbacks: 'influencers/omniauth_callbacks' }, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
