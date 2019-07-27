class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books,:options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :photographer_id
      t.date :date
      t.time :time
      t.text :message
      t.text :meeting_spot
      t.string :total_price
      t.string :status

      t.timestamps
    end
  end
end

