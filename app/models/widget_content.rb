class WidgetContent < ActiveRecord::Base
  belongs_to :widget, :polymorphic => true
  belongs_to :content, :polymorphic => true
end
