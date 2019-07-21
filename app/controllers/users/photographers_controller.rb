class Users::PhotographersController < ApplicationController

  def show

  	@user = current_user
  	@photographer = Photographer.find(params[:id])
  	@images = @photographer.images.each_with_object({}) { |i, hash| hash[i.image_number] = i }
  	@reviews = @photographer.reviews.page(params[:page]).per(10)

  end

  def photographer_params
    params.require(:photographer).permit(:profile_img, :price, :area, :mother_tongue, :language_1, :language_2, :introduction, :city_id)
  end

end
