class Wedding < ActiveRecord::Base
  has_many :rsvp_questions
  belongs_to :location
end
