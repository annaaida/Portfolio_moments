class Users::FavoritesController < ApplicationController

  def index

  	@favorites = Favorite.where(user_id: current_user.id)

  end

  def favorite_params
  	params.require(:favorite).permit(:photographer_id, :user_id)
  end

end
