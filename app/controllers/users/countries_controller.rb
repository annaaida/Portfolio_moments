class Users::CountriesController < ApplicationController

  def index

  	@countries = Country.page(params[:page]).per(21)

  end

  def show

  	@country = Country.find(params[:id])
              @search = City.ransack(params[:q]) #(params[:q])に検索パラメーターが入る 検索する@searchオブジェクトを生成

    if params[:q]
    @cities = @search.result(distinct: true).page(params[:page]).per(20) #検索結果を表示する@resultオブジェクトを生成

    else
          @cities = @country.cities.page(params[:page]).per(21)

    end

  end

  private

  def country_params
    params.require(:country).permit(:country_name, :country_img)
  end

  def city_params
    params.require(:city).permit(:city_name, :city_img)
  end

end
