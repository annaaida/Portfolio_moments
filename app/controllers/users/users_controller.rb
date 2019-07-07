class Users::UsersController < ApplicationController

  def index

    @user = current_user
    @search = City.ransack(params[:q])

  end

  def about
  end

  def show
  end

  def edit
  end

  def update
  end
end
