class Admins::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page])

  end

  def edit

  	@country = Country.find(params[:id])

  end

  def update

  	country = Country.find(params[:id])
  	country.update(country_params)
    redirect_to admins_countries_path(country)

  end

  private

  def country_params
    params.require(:country).permit(:country_name, :country_img)
  end

end
