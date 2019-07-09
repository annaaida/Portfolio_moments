class Photographers::PhotographersController < ApplicationController

  def index

    @user = current_user
    #@photographer = Photographer.find(params[:id])

  end

  def new

    @photographer = Photographer.new
    @images = Image.new(photographer_id: @photographer.id)

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
    @images = Image.new(photographer_id: @photographer.id)

  end

  def update
  end

  private

  def photographer_params
    params.require(:photographer).permit(
      :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :profile_img,
      images_attributes:[:id, :image_1, :image_2, :image_3, :image_4, :image_5, :image_6]
      )
  end

end
