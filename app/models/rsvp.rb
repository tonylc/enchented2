class Rsvp < ActiveRecord::Base
  
  has_many :rsvp_selections
  validates_presence_of :name
  validates_inclusion_of :can_attend, :in => [true, false]
  
end
