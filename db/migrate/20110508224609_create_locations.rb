class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state_id
      t.string :postal_code
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
