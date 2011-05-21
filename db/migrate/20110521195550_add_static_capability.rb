class AddStaticCapability < ActiveRecord::Migration
  def self.up
    add_column :pages, :is_static, :boolean, :default => false
    if Rails.env.production?
      Page.find_by_title('Wedding Party').update_attribute(:is_static, true)
    end
  end

  def self.down
    remove_column :pages, :is_static
  end
end
