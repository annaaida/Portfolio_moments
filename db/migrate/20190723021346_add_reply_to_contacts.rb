class AddReplyToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :reply, :text
  end
end
