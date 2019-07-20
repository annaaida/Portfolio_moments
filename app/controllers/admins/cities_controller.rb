class Admins::CitiesController < ApplicationController

  def new

    @city = City.new

  end

  def create

    @city = City.new(city_params)
    @country = Country.find(params[:city][:country_id])
    @city.country_id = @country.id

    if @city.save
      redirect_to admins_cities_path(@country)
    else
      render :template => "admins/cities/new"
    end

  end

  def index

    @cities = City.page(params[:page])

  end

  def show
  end

  def edit

    @city = City.find(params[:id])

  end

  def update

    city = City.find(params[:id])

    if city.update(city_params)
      redirect_to admins_cities_path
    else
      render :template => "admins/cities/edit"
    end

  end

  def destroy

    city = City.find(params[:id])

    if city.destroy
      redirect_to admins_cities_path
    end
  end

  private

  def city_params
    params.require(:city).permit(:country_id, :city_name, :city_img, :about_city)
  end

end

