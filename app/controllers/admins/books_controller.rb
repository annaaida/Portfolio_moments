class Admins::BooksController < ApplicationController

  def index

    @bookings = Book.page(params[:page]).per(50)

  end

  def show

    @booking = Book.find(params[:id])

  end

  def edit

    @booking = Book.find(params[:id])

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
  end

  private

  def booking_params
    params.require(:book).permit(:photographer_id, :date, :time, :message, :meeting_spot, :total_price, :people, :contact_number, :status, :created_at)
  end

end
