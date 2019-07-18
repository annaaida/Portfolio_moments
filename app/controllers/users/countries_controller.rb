class Users::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page]).per(21)

  end

  def show

  	@countries = Country.find(params[:id])
  	@cities = @countries.cities

  end

  private

  def country_params
    params.require(:country).permit(:country_name, :country_img)
  end

end
