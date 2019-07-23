class RemoveContactNumberFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :contact_number, :string
  end
end
