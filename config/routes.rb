Rails.application.routes.draw do

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

  namespace :photographers do
    root to: "photographers#index"
    resources :photographers, except:[:destroy]
    get 'photographers/about'
  end

  namespace :admins do
    resources :countries, only:[:index, :edit, :update]
    resources :cities
  end

  namespace :admins do
    root to: "users#index"
    resources :users, only:[:index, :show, :edit, :update]
    get 'users/about'
  end


end
