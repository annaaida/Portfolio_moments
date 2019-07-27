class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :city_id
      t.integer :image_id
      t.string :price
      t.string :area
      t.string :mother_tongue
      t.string :language_1
      t.string :language_2
      t.text :introduction

      t.timestamps
    end
  end
end
