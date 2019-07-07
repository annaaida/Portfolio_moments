class Photographers::PhotographersController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new

    @photographer = Photographer.new
    @images = @photographer.images.build

    6.times { @photographer.images.build }
    # デフォルトで6つの画像投稿欄を作成

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
  end

  def edit

    @photographer = Photographer.find(params[:id])
    @images = @photographer.images.build

    6.times { @photographer.images.build }
    # デフォルトで6つの画像投稿欄を作成

  end

  def update
  end

  private

  def photographer_params
    params.require(:photographer).permit(
      :name,
      images_attributes:[:id, :image_1, :image_2, :image_3, :image_4, :image_5, :image_6]
      )
  end

end
