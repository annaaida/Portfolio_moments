class Users::PhotographersController < ApplicationController

  def index
  end

  def show

  	@user = User.find(params[:id])
  	@photographer = Photographer.find(params[:id])

  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_last_name)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction)
  end

end
