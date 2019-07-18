class AddCountryImgIdToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :country_img_id, :string
  end
end
