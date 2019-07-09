class CreateCityPhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :city_photographers do |t|
      t.integer :city_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
