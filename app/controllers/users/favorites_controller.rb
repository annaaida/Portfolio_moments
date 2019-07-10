class Users::FavoritesController < ApplicationController

  before_action :set_photographer
  # ？？？？

  def create

  	photographer = Photographer.find(params[:photographer_id])
	  favorite = current_user.favorites.new(photographer_id: photographer.id)
	  favorite.save

  end

  def destroy

  	photographer = Photographer.find(params[:photographer_id])
	  favorite = Favorite.find_by(photographer_id: params[:photographer_id], user_id: current_user)
	  favorite.destroy

  end

  private

	def set_photographer
		@photographer = Photographer.find(params[:photographer_id])
	end
end
