class Users::BooksController < ApplicationController

  def index

  	@bookings = Book.page(params[:page]).per(50).order(id: "DESC")

  end

  def show

  	@booking = Book.find(params[:format])

  end

  private

  def booking_params
  	params.require(:book).permit(:date, :time, :message, :meeting_spot, :total_price)
  end

end
