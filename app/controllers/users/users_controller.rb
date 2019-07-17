class Users::UsersController < ApplicationController

  def index

  end

  def show

    @user = current_user
    @bookings = @user.books.page(params[:page]).per(10).order(id: "DESC")

  end

end
