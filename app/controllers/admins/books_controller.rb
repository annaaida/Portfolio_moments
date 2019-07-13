class Admins::BooksController < ApplicationController

  def index

    @bookings = Book.page(params[:page]).per(50)

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:book).permit(:photographer_id, :date, :time, :message, :meeting_spot, :total_price, :people, :contact_number, :status, :created_at)
  end

end
