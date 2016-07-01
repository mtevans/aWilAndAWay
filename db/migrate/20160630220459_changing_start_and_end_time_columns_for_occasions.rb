class ChangingStartAndEndTimeColumnsForOccasions < ActiveRecord::Migration
  def change
    remove_column :occasions, :start_time
    remove_column :occasions, :end_time
    add_column :occasions, :start_time, :integer, null: false
    add_column :occasions, :end_time, :integer, null: false
  end
end
