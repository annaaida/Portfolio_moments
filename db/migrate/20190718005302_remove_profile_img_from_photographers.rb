class RemoveProfileImgFromPhotographers < ActiveRecord::Migration[5.2]
  def change
    remove_column :photographers, :profile_img, :string
  end
end
