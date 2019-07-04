Rails.application.routes.draw do

  namespace :admins do
    get 'cities/new'
    get 'cities/create'
    get 'cities/show'
    get 'cities/edit'
    get 'cities/update'
    get 'cities/destroy'
  end
  namespace :admins do
    root to: "countries#index"
    resources :countries, only:[:index, :edit, :update]
  end

  devise_for :photographers, controllers: {
  	sessions:      'photographers/sessions',
  	passwords:     'photographers/passwords',
  	registrations: 'photographers/registrations'
  }

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
