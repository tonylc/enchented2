class WidgetWidgetContent < ActiveRecord::Base
  belongs_to :widget, :polymorphic => true
  belongs_to :widget_content, :polymorphic => true
end
