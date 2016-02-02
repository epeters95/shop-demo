Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }

  devise_scope :user do
    get '/sign_up', to: 'users/registrations#new'
    get '/sign_in', to: 'users/sessions#new'
    root to: 'users/registrations#new'
  end

  
end
