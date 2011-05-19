class HidePage < ActiveRecord::Migration
  def self.up
    add_column :pages, :show_page, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :pages, :show_page
  end
end
