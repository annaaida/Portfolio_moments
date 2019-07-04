class Admins::CitiesController < ApplicationController

  def new

    @city = City.new

  end

  def create

    @city = City.new(city_params)
    @city.save

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
    params.require(:city).permit(:city_name, :city_img, :about_city)
  end

end

