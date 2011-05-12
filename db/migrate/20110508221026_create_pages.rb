class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :wedding_id
      t.string :title
      t.integer :navigation_order
      t.boolean :is_locked
    end
  end

  def self.down
    drop_table :pages
  end
end
