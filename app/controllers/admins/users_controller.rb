class Admins::UsersController < ApplicationController

  def index

    @users = User.page(params[:page]).per(50)

  end

  def show

    @user = User.find(params[:id])
    @books = @user.books.page(params[:page]).per(20)
    @reviews = @user.reviews

  end

  def edit

    @user = User.find(params[:id])

  end

  def update

    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admins_user_path(@user), notice: "編集しました"
    else
      render :template => "admin/users/edit"
    end

  end

  def destroy

    @user = User.find(params[:id])
    @user.destroy
    redirect_to admins_users_path, notice: "削除しました"

  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :kana_last_name, :kana_first_name, :email)
  end

end
