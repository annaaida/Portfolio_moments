class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :photographer_id
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.string :contact_title
      t.text :contact_contents

      t.timestamps
    end
  end
end
