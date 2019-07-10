class AddContactNumberToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :contact_number, :string
  end
end
