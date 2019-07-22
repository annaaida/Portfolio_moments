class Users::UsersController < ApplicationController

  def index

  	@user = current_user

  end

  def show

    @user = current_user
    @bookings = @user.books.page(params[:page]).per(10).order(id: "DESC")
    @photographer = Photographer.find_by(user_id: current_user.id)

  end

end
