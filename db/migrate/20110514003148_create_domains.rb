class CreateDomains < ActiveRecord::Migration
  def self.up
    create_table :domains do |t|
      t.integer :wedding_id
      t.string :domain

      t.timestamps
    end
  end

  def self.down
    drop_table :domains
  end
end
