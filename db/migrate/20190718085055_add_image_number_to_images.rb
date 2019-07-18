class AddImageNumberToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image_number, :string
  end
end
