class Admins::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page])

  end

  def edit

  	@countries = Country.page(params[:page])

  end

  def update
  end

  private

  def update_country_params
    params.require(:country).permit(:country_name, :country_img)
  end

end
