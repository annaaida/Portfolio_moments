Rails.application.routes.draw do

  namespace :photographers do
    resources :photographers, only:[:index, :show, :edit, :update]
  end

  namespace :admins do
    resources :countries, only:[:index, :edit, :update]
    resources :cities
  end

  devise_for :admins, controllers: {
  	sessions:      'photographers/sessions',
  	passwords:     'photographers/passwords',
  	registrations: 'photographers/registrations'
  }

  devise_for :users, controllers: {
  	sessions:      'users/sessions',
  	passwords:     'users/passwords',
  	registrations: 'users/registrations'
  }

end
