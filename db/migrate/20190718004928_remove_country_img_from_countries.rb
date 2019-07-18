class RemoveCountryImgFromCountries < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :country_img, :string
  end
end
