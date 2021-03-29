Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :tweets

  get '/:username', to: 'users#show', as: 'user'

  scope ':username' do
    resources :followings, only: [:index]
    resources :followers, only: [:index]
  end

  get 'looking_for', to: 'users#looking_for'
  post 'looking_for', to: 'users#looking_for'

  resources :relationships

end
