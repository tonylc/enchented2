class PageWidget < ActiveRecord::Base
  
  belongs_to :page
  belongs_to :widget, :polymorphic => true
  belongs_to :widget_group
  
  def is_group_widget?
    !widget_group.blank?
  end
end
