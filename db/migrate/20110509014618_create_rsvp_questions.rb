class CreateRsvpQuestions < ActiveRecord::Migration
  def self.up
    create_table :rsvp_questions do |t|
      t.integer :wedding_id
      t.integer :html_form_type
      t.string :question
      t.boolean :is_required
      t.integer :display_order
    end
  end

  def self.down
    drop_table :rsvp_questions
  end
end
