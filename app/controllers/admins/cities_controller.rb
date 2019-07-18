class Admins::CitiesController < ApplicationController

  def new

    @city = City.new

  end

  def create

    @city = City.new(city_params)
    @country = Country.find(params[:country_id])
    @city.country_id = @country.id

    if @city.save
      redirect_to admins_cities_path(@country)
    else
      render :template => "admins/cities/new"
    end

  end

  def index

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def city_params
    params.require(:city).permit(:country_id, :city_name, :city_img, :about_city)
  end

end

