class RemoveCityImgFromCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :city_img, :string
  end
end
