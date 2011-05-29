class CreateWidgetInformations < ActiveRecord::Migration
  def self.up
    create_table :widget_informations do |t|
      t.string :title      
      t.text :title_url
      t.string :tab_name
      t.integer :description_content_text_id
    end
  end

  def self.down
    drop_table :widget_informations
  end
end
