Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'accounts/index'
  get 'accounts/pay'
  post 'accounts/recharge'
end
