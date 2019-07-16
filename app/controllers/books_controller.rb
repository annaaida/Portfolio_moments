class BooksController < ApplicationController

  def new

  	@booking = Book.new
    #@photographer = Photographer.find(params[:id])

  end

  def create

  	@photographer = Photographer.find(params[:photographer_id])
  	@booking = Book.new(booking_params)
    @booking.user_id = current_user.id
    @booking.photographer_id = @photographer.id

    if @booking.save
      BookMailer.send_when_user_book(@booking).deliver
      redirect_to photographer_confirm_path(@photographer.id,@booking.id)
    else
      render :new
    end

  end


  def index

    @bookings = Book.page(params[:page])

  end

  def show

    @booking = Book.find(params[:id])

  end

  def confirm

    @booking = Book.find(params[:id])

  end

  def edit

    @booking = Book.find(params[:id])

  end

  def update
  end

  def destroy
  end


  private

  def booking_params
  	params.require(:book).permit(:date, :time, :message, :meeting_spot, :total_price)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
