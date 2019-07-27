class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :photographer_id
      t.integer :country_id
      t.string :city_name
      t.string :city_img
      t.text :about_city

      t.timestamps
    end
  end
end
