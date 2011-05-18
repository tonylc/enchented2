class CreateWidgetAlbums < ActiveRecord::Migration
  def self.up
    create_table :widget_albums do |t|
      t.integer :service_provider
      t.string :gallery_id
      t.timestamps
    end
  end

  def self.down
    drop_table :widget_albums
  end
end
