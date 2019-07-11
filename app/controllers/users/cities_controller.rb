class Users::CitiesController < ApplicationController

  def show

  	@city = City.find(params[:id])
  	@photographer = @city.city_photographers.includes(:photographer)

  	# ランキング機能
  	like_count = Photographer.joins(:favorites).group(:photographer_id).group("YEAR(created_at)").group("MONTH(created_at)").count 
    liked_ids = Hash[like_count.sort_by{ |_, v| -v }].keys
    @ranking= Photographer.where(id: liked_ids)

  end


  private

  def city_params
  	params.require(:city).permit(:city_name, :city_img, :about_city)
  end

end
