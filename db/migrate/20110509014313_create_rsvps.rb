class CreateRsvps < ActiveRecord::Migration
  def self.up
    create_table :rsvps do |t|
      t.integer :user_id
      t.boolean :can_attend
      t.text :additional_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :rsvps
  end
end
