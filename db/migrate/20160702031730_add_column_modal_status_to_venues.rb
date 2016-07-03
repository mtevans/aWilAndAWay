class AddColumnModalStatusToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :modal_status, :boolean, default: false
  end
end
