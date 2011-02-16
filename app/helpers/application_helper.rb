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
    params[:page]
  end

  def previous
    request.request_uri.split('/').pop().capitalize;
  end
  
  def user
    params[:user]
  end

  def widget
    self.action_name
  end


# Link Maker
# ---------------------------------------------------------------------------

  def go(options = {})

      raw('<a href="/prototype/' + options[:to] + '/' + user + '">' + options[:to].capitalize + '</a>')
  
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