class CleanupOldFields < ActiveRecord::Migration
  def self.up
    remove_column :widget_events, :is_rsvp_event
    remove_column :pages, :class_name

    remove_column :widget_albums, :created_at
    remove_column :widget_albums, :updated_at

    remove_column :widget_events, :created_at
    remove_column :widget_events, :updated_at

    remove_column :widget_galleries, :created_at
    remove_column :widget_galleries, :updated_at

    remove_column :pages, :is_static
  end

  def self.down
    add_column :widget_events, :is_rsvp_event, :boolean, :default => false
    add_column :pages, :class_name, :string

    add_column :widget_albums, :created_at, :datetime
    add_column :widget_albums, :updated_at, :datetime

    add_column :widget_events, :created_at, :datetime
    add_column :widget_events, :updated_at, :datetime

    add_column :widget_galleries, :created_at, :datetime
    add_column :widget_galleries, :updated_at, :datetime

    add_column :pages, :is_static, :boolean, :default => false
  end
end
