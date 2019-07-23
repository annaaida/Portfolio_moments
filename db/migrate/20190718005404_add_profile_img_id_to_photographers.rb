class AddProfileImgIdToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :profile_img_id, :string
  end
end
