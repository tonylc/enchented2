class CreateWidgetEvents < ActiveRecord::Migration
  def self.up
    create_table :widget_events do |t|
      t.integer :location_id
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :is_rsvp_event, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :widget_events
  end
end
