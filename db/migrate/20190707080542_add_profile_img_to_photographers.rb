class AddProfileImgToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :profile_img, :string
  end
end
