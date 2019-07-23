class RemoveImage2FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_2, :string
  end
end
