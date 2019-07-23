class RemoveImage3FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_3, :string
  end
end
