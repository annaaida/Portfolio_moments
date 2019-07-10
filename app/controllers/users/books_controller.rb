class Users::BooksController < ApplicationController

  def new

  	@booking = Book.new
  	@booking.user_id = current_user.id
    #@photographer = Photographer.find(params[:id])

  end

  def create

  	@book.save
    redirect_to users_books(@book)

  end

  def show

    @book = Book.find(params[:id])

  end

  def index
  end

  private

  def booking_params
  	params.require(:cart).permit(:date, :time, :message, :meeting_spot, :total_price)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end


end
