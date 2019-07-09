class RemoveCityIdFromPhotographers < ActiveRecord::Migration[5.2]
  def change
    remove_column :photographers, :city_id, :integer
  end
end
