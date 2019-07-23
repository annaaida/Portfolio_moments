class CreatePhotographerContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :photographer_contacts do |t|
      t.integer :user_id
      t.integer :photographer_id
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.string :title
      t.text :contents

      t.timestamps
    end
  end
end