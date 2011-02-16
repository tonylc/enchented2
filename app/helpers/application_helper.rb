module ApplicationHelper

  require 'content.rb'
  require 'logic.rb'
  require 'widgets.rb'

  include ContentHelper
  include LogicHelper
  include WidgetHelper


# Details
# ---------------------------------------------------------------------------

  def context
    params[:context]
  end

  def page
    '/' + self.controller_name + '/' + self.action_name + '/'
  end

  def previous
    request.request_uri.split('/').pop().capitalize;
  end

  def widget
    self.action_name
  end


# Gathers libraries specified in views, filters out duplicates
# ---------------------------------------------------------------------------

  def adapters(*js)
    @adapters ||= []
    @adapters |= js
  end

  def libraries(*js)
    @libraries ||= []
    @libraries |= js
  end

  def scripts(*js)
    @scripts ||= []
    @scripts |= js
  end


end