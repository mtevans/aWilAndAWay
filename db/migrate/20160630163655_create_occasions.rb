class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.integer :organizer_id, null: false, index: true
      t.integer :venue_id, null: false, index: true
      t.date :date, null: false, index: true
      t.time :start_time, null: false, index: true
      t.time :end_time, null: false
      t.timestamps null: false
    end
  end
end
