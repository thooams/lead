Rails.application.routes.draw do
  root to: 'pages#home'
  get :my_stat_test, to: 'pages#my_stat_test'
  get :other_stat_test, to: 'pages#other_stat_test'
  resources :campaigns, only: [:index]
  devise_for :consumers, controllers: { omniauth_callbacks: 'consumers/omniauth_callbacks' }, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  resources :identities, only: [:show], param: :user_name
  resources :pages do
    collection do
      get :profile
    end
  end
end
