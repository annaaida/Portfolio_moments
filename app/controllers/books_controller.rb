class BooksController < ApplicationController

  def new

  	@booking = Book.new
    #@photographer = Photographer.find(params[:id])

  end

  def create

  	@booking = Book.new(booking_params)
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to users_books_index_path(@booking.id)
    else
      render :new
    end

  end

  def show

    @book = Book.find(params[:id])

  end

  def index

    @book = Book.find(params[:id])

  end

  private

  def booking_params
  	params.require(:book).permit(:date, :time, :message, :meeting_spot, :total_price)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
