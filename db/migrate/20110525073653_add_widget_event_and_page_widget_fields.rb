class AddWidgetEventAndPageWidgetFields < ActiveRecord::Migration
  def self.up
    add_column :widget_events, :description, :string
    add_column :locations, :map_url, :string
    change_column :locations, :longitude, :decimal, :precision => 9, :scale => 6
    change_column :locations, :latitude, :decimal, :precision => 9, :scale => 6
  end

  def self.down
    remove_column :widget_events, :description
    remove_column :locations, :map_url
    change_column :locations, :longitude, :decimal, :precision => 10, :scale => 0
    change_column :locations, :latitude, :decimal, :precision => 10, :scale => 0
  end
end
