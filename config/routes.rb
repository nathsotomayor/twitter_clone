Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :tweets

  get '/:username', to: 'users#show', as: 'user'

  scope ':username' do
    resources :followings, only: [:index]
    resources :followers, only: [:index]
  end

  get 'search_user', to: 'users#search_user'
  post 'search_user', to: 'users#search_user'

  resources :relationships

end
