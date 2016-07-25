Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    # omniauth_callbacks: 'users/omniauth_callbacks',
    passwords: 'users/passwords',
    conformations: 'users/conformations',
    unlocks: 'users/unlocks'
  }

  get 'accounts/index'
  get 'accounts/pay'
  post 'accounts/recharge'
  get 'accounts/records'
  get 'books/show'
  get 'books/index'

  match '*path', to: 'home#404', via: :all
end
