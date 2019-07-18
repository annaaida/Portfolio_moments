class RemoveImage6FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_6, :string
  end
end
