class Wedding < ActiveRecord::Base
  has_many :pages
  has_many :domains
  has_many :rsvp_questions, :order => "display_order ASC"
  belongs_to :location

  def bride
    User.find_by_wedding_id_and_role_id(id, User::ROLE_BRIDE)
  end

  def groom
    User.find_by_wedding_id_and_role_id(id, User::ROLE_GROOM)
  end

  def confirmed_guests
    Rsvp.count(:conditions => "wedding_id = #{id} AND can_attend = 1")
  end
end
