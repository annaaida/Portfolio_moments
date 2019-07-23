class AddCityIdToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :city_id, :integer
  end
end
