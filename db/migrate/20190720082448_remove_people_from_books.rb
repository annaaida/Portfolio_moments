class RemovePeopleFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :people, :integer
  end
end
