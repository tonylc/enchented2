class CreateWidgetContent < ActiveRecord::Migration
  def self.up
    create_table :widget_widget_contents do |t|
      t.string :widget_type
      t.integer :widget_id
      t.string :widget_content_type
      t.integer :widget_content_id
      t.integer :verticle_order
    end
    
    create_table :widget_content_links do |t|
      t.string :name
      t.boolean :is_internal
      t.text :url
    end

    create_table :widget_content_texts do |t|
      t.text :text
    end
  end

  def self.down
    drop_table :widget_widget_contents
    drop_table :widget_content_links
    drop_table :widget_content_texts
  end
end
