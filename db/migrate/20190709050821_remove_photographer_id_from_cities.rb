class RemovePhotographerIdFromCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :photographer_id, :integer
  end
end
