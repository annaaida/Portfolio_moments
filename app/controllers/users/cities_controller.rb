class Users::CitiesController < ApplicationController

  def show

  	@city = City.find(params[:id])
  	@photographer = @city.city_photographers.includes(:photographer)

  end


  private

  def city_params
  	params.require(:city).permit(:city_name, :city_img, :about_city)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_last_name)
  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
