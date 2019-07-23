class Users::CitiesController < ApplicationController

  def show

  	@city = City.find(params[:id])
  	@photographer = @city.city_photographers.includes(:photographer)
  	@all_ranks = Photographer.find(Favorite.group(:photographer_id).order('count(photographer_id) desc').limit(10).pluck(:photographer_id))

  end


  private

  def city_params
  	params.require(:city).permit(:city_name, :city_img, :about_city)
  end

end
