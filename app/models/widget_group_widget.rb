class WidgetGroupWidget < ActiveRecord::Base

  belongs_to :widget_group
  belongs_to :widget, :polymorphic => true
end
