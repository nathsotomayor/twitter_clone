Rails.application.routes.draw do

  devise_for :users
  resources :tweets

  get '/:username', to: 'users#show', as: 'user'

  scope ':username' do
    resources :followings, only: [:index]
    resources :followers, only: [:index]
  end

  resources :relationships
  root 'home#index'

end
