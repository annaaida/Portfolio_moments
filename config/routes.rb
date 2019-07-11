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

  root to: "photographers#index"
  get 'photographers/about'
  resources :photographers, except:[:destroy] do
    resources :books, only:[:new, :create, :show]
    get "/books/:id/index" => "books#index", as: "books_index"
  end

end
