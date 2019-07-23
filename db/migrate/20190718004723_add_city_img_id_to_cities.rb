class AddCityImgIdToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :city_img_id, :string
  end
end
