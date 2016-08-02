class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :title, null: false, index: true, unique: true
      t.string :about, null: false, index: true
      t.text :description, null: false, index: true
      t.string :address, null: false
      t.string :zip_code, null: false
      t.string :email, null: false
      t.string :url, null: false, default: "http://res.cloudinary.com/dfld7chk4/image/upload/v1470114294/Charity_nvrpyd.jpg"
      t.integer :organizer_id, null: false
      t.timestamps null: false
    end
  end
end
