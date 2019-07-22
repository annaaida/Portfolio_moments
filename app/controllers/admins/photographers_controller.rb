class Admins::PhotographersController < ApplicationController

  def index

    @photographers = Photographer.page(params[:page]).per(50)

  end

  def show

    @photographers = Photographer.find(params[:id])

  end

  def destroy

    photographer = Photographer.find(params[:id])
    photographer.destroy
    redirect_to admins_photographers_path, notice: "削除しました"
  end

  def user_params
    params.require(:photographer).permit(:user_id, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :profile_img)
  end

end
