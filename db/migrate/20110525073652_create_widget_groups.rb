class CreateWidgetGroups < ActiveRecord::Migration
  def self.up
    create_table :widget_groups do |t|
      t.string :title
      t.string :description

      t.timestamps
    end

    create_table :widget_group_widgets do |t|
      t.integer :widget_group_id
      t.string :widget_type
      t.integer :widget_id
    end

    add_column :page_widgets, :widget_group_id, :integer, :default => nil
  end

  def self.down
    drop_table :widget_groups
    drop_table :widget_group_widgets

    remove_column :page_widgets, :widget_group_id
  end
end
