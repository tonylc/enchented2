class CreateWeddings < ActiveRecord::Migration
  def self.up
    create_table :weddings do |t|
      t.string :name
      t.string :name_html
      t.string :rsvp_message
      t.datetime :date
      t.string :text_announcement_image_url
      t.integer :photo_gallery_id
      t.string :video_url
      t.integer :location_id
      t.string :bride_first_name
      t.string :bride_last_name
      t.string :groom_first_name
      t.string :groom_last_name
      t.text :ga_tag

      t.timestamps
    end
  end

  def self.down
    drop_table :weddings
  end
end
