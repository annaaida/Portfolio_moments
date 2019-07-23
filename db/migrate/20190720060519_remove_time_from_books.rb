class RemoveTimeFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :time, :time
  end
end
