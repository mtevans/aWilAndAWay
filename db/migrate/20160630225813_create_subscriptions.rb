class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :volunteer_id, null: false
      t.integer :occasion_id, null: false
      t.timestamps null: false
    end
    add_index :subscriptions, [:volunteer_id, :occasion_id], unique: true
  end
end
