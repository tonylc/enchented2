class Page < ActiveRecord::Base

  belongs_to :wedding
  has_many :page_widgets, :order => "verticle_order ASC"
end
