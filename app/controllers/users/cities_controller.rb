class Users::CitiesController < ApplicationController

  def show

  	@city = City.find(params[:id])
  	@photographer = @city.city_photographers.includes(:photographer)

  end


  private

  def city_params
  	params.require(:city).permit(:city_name, :city_img, :about_city)
  end

end
