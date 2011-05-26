class Page < ActiveRecord::Base
  belongs_to :wedding
  has_many :page_widgets, :order => "verticle_order ASC"
  scope :is_active, lambda {|active| where("pages.show_page = ?", active) }

  def self.find_home_page(wedding)
    Page.find_by_wedding_id_and_is_home(wedding.id, true)
  end

  def grouped_widgets
    representatives = PageWidget.where(["page_id = ? and widget_group is not null", id]).group(:widget_group).order("widget_group ASC")

    representatives.map do |rep|
      PageWidget.where(:page_id => id, :widget_group => rep.widget_group).order("verticle_order ASC")
    end
  end

  def ungrouped_widgets
    PageWidget.where(["page_id = ? and widget_group is null", id]).order("verticle_order ASC")
  end
end
