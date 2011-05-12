class PageWidget < ActiveRecord::Base
  
  belongs_to :page
  belongs_to :widget, :polymorphic => true
end
