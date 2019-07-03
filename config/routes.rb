Rails.application.routes.draw do

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
