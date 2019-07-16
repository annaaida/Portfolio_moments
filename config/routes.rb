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
    root to: "contacts#top"
    resources :users
    resources :cities
    resources :photographers
    resources :books, except:[:new, :create]
    resources :contacts, except:[:edit, :update]
    resources :countries, only:[:index, :edit, :update]
  end

  namespace :users do
    root to: "users#index"
    resources :cities, only:[:show]
    resources :photographers, only:[:show]
    resources :contacts, only:[:new, :create]
    resources :countries, only:[:index, :show]
    resources :users, only:[:index, :show, :edit, :update]
  end

   root to: "photographers#top"
   get "/about" => "photographers#about"
   resources :photographers, except:[:index, :destroy] do
      get "/", to: "photographers#top"
      get "/confirm", to: "photographers#confirm"
      resources :books
      get "/books/:id/index" => "books#index", as: "books_index"
      resources :reviews
      resource :favorites, only:[:create, :destroy]
      resources :contacts, except:[:edit, :update, :destroy]
   end

end
