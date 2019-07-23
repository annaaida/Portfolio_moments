class Users::FavoritesController < ApplicationController

  def index

  	@favorites = Favorite.page(params[:page]).per(20).order(id: "DESC")

  end

  def favorite_params
  	params.require(:favorite).permit(:photographer_id, :user_id)
  end

end
