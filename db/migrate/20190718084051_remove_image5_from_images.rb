class RemoveImage5FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_5, :string
  end
end
