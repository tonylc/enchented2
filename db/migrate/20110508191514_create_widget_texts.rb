class CreateWidgetTexts < ActiveRecord::Migration
  def self.up
    create_table :widget_texts do |t|
      t.string :title
      t.text :text
    end
  end

  def self.down
    drop_table :widget_texts
  end
end
