class Page < ActiveRecord::Base

  belongs_to :wedding
  has_many :page_widgets, :order => "verticle_order ASC"

  def self.find_home_page(wedding)
    Page.find_by_wedding_id_and_is_home(wedding.id, true)
  end
end