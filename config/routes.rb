Rails.application.routes.draw do

  devise_for :users
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    root to: "contacts#top"
    resources :users
    resources :cities
    resources :books, except:[:new, :create]
    resources :contacts, except:[:new, :create]
    resources :photographers, except:[:edit, :update]
    resources :countries, only:[:index, :edit, :update]
    resources :reviews, only:[:index, :edit, :update, :destroy]
  end

  namespace :users do
    root to: "users#index"
    resources :cities, only:[:index, :show]
    resources :favorites, only:[:index]
    resources :photographers, only:[:show]
    resources :books, only:[:index, :show]
    resources :contacts, only:[:new, :create]
    resources :countries, only:[:index, :show]
    resources :users, only:[:index, :show, :edit, :update]
  end

   root to: "photographers#top"
   resources :photographers, except:[:index, :destroy] do
      get "/top", to: "photographers#top"
      get "/confirm", to: "books#confirm"
      resources :books
      get "/books/:id/index" => "books#index", as: "books_index"
      resources :reviews
      resource :favorites, only:[:create, :destroy]

   end

end
