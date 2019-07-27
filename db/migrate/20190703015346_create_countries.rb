class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :photographer_id
      t.integer :city_id
      t.string :country_name
      t.string :country_img

      t.timestamps
    end
  end
end

