Rails.application.routes.draw do

  namespace :users do
    resources :users, only:[:index, :show, :edit, :update]
    get 'users/about'
  end

  namespace :photographers do
    resources :photographers, only:[:index, :about, :show, :edit, :update]
  end

  namespace :admins do
    resources :countries, only:[:index, :edit, :update]
    resources :cities
  end

  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
  	sessions:      'users/sessions',
  	passwords:     'users/passwords',
  	registrations: 'users/registrations'
  }

end
