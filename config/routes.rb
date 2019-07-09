Rails.application.routes.draw do

  namespace :users do
    get 'favorites/create'
    get 'favorites/destroy'
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

  namespace :photographers do
    root to: "photographers#index"
    get 'photographers/about'
    resources :photographers, except:[:destroy]
  end

  namespace :admins do
    resources :countries, only:[:index, :edit, :update]
    resources :cities
  end

  namespace :users do
    get 'users/about'
    resources :users, only:[:index, :show, :edit, :update]
    resources :countries, only:[:index, :show]
    resources :cities, only:[:show]
    resources :photographers, only:[:show]
  end

end
