class AddStartTimeToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :start_time, :time
  end
end
