class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.integer :photographer_id
      t.integer :city_id
      t.string :country_name
      t.string :country_img

      t.timestamps
    end
  end
end
