class Users::UsersController < ApplicationController

  def index

    @user = current_user

  end

  def about
  end

  def show

    @user = current_user

  end

end
