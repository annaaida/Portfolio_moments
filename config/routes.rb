Rails.application.routes.draw do

  devise_for :photographers
  devise_for :admins
  devise_for :users

end
