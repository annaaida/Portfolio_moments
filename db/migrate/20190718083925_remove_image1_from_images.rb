class RemoveImage1FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_1, :string
  end
end
