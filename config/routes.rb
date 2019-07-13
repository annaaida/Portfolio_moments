Rails.application.routes.draw do

  namespace :admins do
    get 'books/index'
    get 'books/show'
    get 'books/edit'
    get 'books/update'
    get 'books/destroy'
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

  namespace :admins do
    root to: "contacts#top"
    resources :users
    resources :cities
    resources :photographers
    resources :books, except:[:new, :create]
    resources :contacts, except:[:edit, :update]
    resources :countries, only:[:index, :edit, :update]
  end

  namespace :users do
    get 'users/about'
    resources :cities, only:[:show]
    resources :photographers, only:[:show]
    resources :contacts, only:[:new, :create]
    resources :countries, only:[:index, :show]
    resources :favorites, only:[:create, :destroy]
    resources :users, only:[:index, :show, :edit, :update]
  end

  root to: "photographers#top"
  get "/about" => "photographers#about"
  resources :photographers, except:[:index, :destroy] do
    get "/top" => "photographers#top"
    resources :reviews
    resource :favorites, only:[:create, :destroy]
    resources :books, only:[:new, :create, :show]
    get "/books/:id/index" => "books#index", as: "books_index"
  end

end
