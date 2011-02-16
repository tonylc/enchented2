class ExampleController < ApplicationController

  require 'widgets.rb'
  include WidgetHelper

  def widget

    render 'ui/' + params[:widget] + '/_' + params[:view], :layout => false

  end

end