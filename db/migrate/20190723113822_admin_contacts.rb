class AdminContacts < ActiveRecord::Migration[5.2]
  def change
  	drop_table :admin_contacts
  end
end
