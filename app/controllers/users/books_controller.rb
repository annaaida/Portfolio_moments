class Users::BooksController < ApplicationController

  def new

  	@booking = Book.new
  	@booking.user_id = current_user.id

  end

  def create

  	@book.save

  end

  private

  def book_params
  	params.require(:cart).permit(:date, :time, :message, :meeting_spot, :total_price)
  end

end
