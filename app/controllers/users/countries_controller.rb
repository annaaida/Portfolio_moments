class Users::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page])

  end

  def show
  end

  private

  def country_params
    params.require(:country).permit(:country_name, :country_img)
  end

end
