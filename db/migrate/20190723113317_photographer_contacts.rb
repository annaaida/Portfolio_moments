class PhotographerContacts < ActiveRecord::Migration[5.2]
  def change
  	drop_table :photographer_contacts
  end
end
