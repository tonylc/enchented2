class CreateWidgetGalleries < ActiveRecord::Migration
  def self.up
    create_table :widget_galleries do |t|
      t.string :title
      t.text :src

      t.timestamps
    end
  end

  def self.down
    drop_table :widget_galleries
  end
end
