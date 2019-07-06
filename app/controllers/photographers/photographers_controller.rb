class Photographers::PhotographersController < ApplicationController

  def index

    @photographer = current_user

  end

  def about

  end

  def show

    @photographer = current_user

  end

  def edit

    @photographer = current_user
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
      images_attributes: [:id, :image_1, :image_2] #カラム名
      )
  end

end
