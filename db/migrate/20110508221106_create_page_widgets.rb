class CreatePageWidgets < ActiveRecord::Migration
  def self.up
    create_table :page_widgets do |t|
      t.integer :page_id
      t.string :widget_type
      t.integer :widget_id
      t.integer :order
    end
  end

  def self.down
    drop_table :page_widgets
  end
end
