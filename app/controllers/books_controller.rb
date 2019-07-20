class BooksController < ApplicationController

  def new

  	@booking = Book.new
    @photographer = Photographer.find(params[:photographer_id])
    @booking.photographer_id = params[:photographer_id]

  end

  def create

    @booking = Book.new(booking_params)
    @booking.user_id = current_user.id
    @booking.photographer_id = (params[:photographer_id])
    @booking.status = "未撮影"

    if @booking.save
      redirect_to photographer_confirm_path((params[:photographer_id]),@booking.id)
    else
      render :new
    end

  end


  def index

    @photographer = Photographer.find_by(user_id: current_user.id)
    @bookings = @photographer.books.page(params[:page]).per(50).order(id: "DESC")

  end

  def show

    @booking = Book.find(params[:id])

  end

  def confirm

    @bookid = params[:format]
    @photographerid = params[:photographer_id]

  end

  def edit

    @booking = Book.find(params[:id])
    @photographer = Photographer.find(params[:photographer_id])

  end

  def update

    booking = Book.find(params[:id])
    booking.update(booking_params)
    redirect_to photographer_book_path(booking)

  end

  def destroy

    booking = Book.find(params[:id])
    booking.destroy
    photographer = Photographer.find(params[:photographer_id])
    #redirect_to users_photographer_path(photographer)

  end


  private

  def booking_params
  	params.require(:book).permit(:date, :start_time, :end_time, :status, :message, :meeting_spot, :total_price)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
