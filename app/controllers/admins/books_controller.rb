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

    @booking = Book.find(params[:id])
    if @booking.update(booking_params)
      redirect_to admins_books_path(@booking), notice: "編集しました"
    else
      render :template => "admin/books/edit"
    end

  end

  def destroy

    @booking = Book.find(params[:id])
    @booking.destroy
    redirect_to admins_books_path, notice: "削除しました"

  end

  private

  def booking_params
    params.require(:book).permit(:photographer_id, :date, :time, :message, :meeting_spot, :total_price, :people, :contact_number, :status, :created_at)
  end

end
