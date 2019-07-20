class PhotographersController < ApplicationController

  def top

    @user = current_user
    @photographer = Photographer.find_by(user_id: current_user.id)
    @bookings = @photographer.books.page(params[:page]).per(10).order(id: "DESC")

  end

  def new

    @photographer = Photographer.new
    @images = @photographer.images.build
    # @images = Image.new(photographer_id: @photographer.id)

    6.times { @photographer.images.build }

  end

  def create

    @photographer = Photographer.new(photographer_params)
    @photographer.user_id = current_user.id

    if @photographer.save
      flash[:notice] = "フォトグラファー情報の登録が完了しました"
      redirect_to photographers_photographers_path(@photographer)
    end

  end

  def about
  end

  def show

    @user = current_user
    @photographer = Photographer.find(params[:id])

  end

  def edit

    @photographer = Photographer.find(params[:id])
    @images = @photographer.images.build
    #@images = Image.new(photographer_id: @photographer.id)

    6.times { @photographer.images.build }

  end

  def update

    @photographer = Photographer.find(params[:id])
    @photographer.update(photographer_params)
    # redirect_to

  end

  private

  def photographer_params
    params.require(:photographer).permit(
      :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :profile_img,
      images_attributes:[:id, :image, :image_number]
      )
  end

end
