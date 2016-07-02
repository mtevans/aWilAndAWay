class ChangeZipCodeToCoordsInVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :zip_code
    add_column :venues, :lat, :float, null: false
    add_column :venues, :lng, :float, null: false
  end
end
