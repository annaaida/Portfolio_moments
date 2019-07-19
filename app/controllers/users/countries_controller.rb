class Users::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page]).per(21)

  end

  def show

  	@countries = Country.find(params[:id])
  	@cities = @countries.cities.page(params[:page]).per(21)

  end

  private

  def country_params
    params.require(:country).permit(:country_name, :country_img)
  end

  def city_params
    params.require(:city).permit(:city_name, :city_img)
  end

end
