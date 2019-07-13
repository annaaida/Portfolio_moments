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
    resources :contacts, only:[:new, :create]
    resources :favorites, only:[:create, :destroy]
  end

  root to: "photographers#top"
  get "/about" => "photographers#about"
  resources :photographers, except:[:index, :destroy] do
    get "/top" => "photographers#top"
    resources :reviews
    resources :books, only:[:new, :create, :show]
    get "/books/:id/index" => "books#index", as: "books_index"
    resource :favorites, only:[:create, :destroy]
  end

end
