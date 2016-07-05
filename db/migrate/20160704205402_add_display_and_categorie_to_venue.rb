class AddDisplayAndCategorieToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :display_status, :boolean, default: true
    add_column :venues, :category, :string, null: false
  end
end
