class RemoveImage4FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_4, :string
  end
end
