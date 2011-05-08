class CreateUserAuths < ActiveRecord::Migration
  def self.up
    create_table :user_auths do |t|
      t.integer :user_id
      t.integer :service_id
      t.string :login
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :user_auths
  end
end
