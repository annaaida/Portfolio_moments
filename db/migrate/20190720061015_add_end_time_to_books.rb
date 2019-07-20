class AddEndTimeToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :end_time, :time
  end
end
