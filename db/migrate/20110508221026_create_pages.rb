class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :url_name
      t.integer :wedding_id      
      t.string :title
      t.string :class_name
      t.integer :navigation_order
      t.boolean :is_locked, :default => false
      t.boolean :is_home, :default => false
      t.boolean :show_title, :default => true
    end
  end

  def self.down
    drop_table :pages
  end
end
