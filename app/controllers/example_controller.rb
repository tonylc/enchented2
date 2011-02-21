class ExampleController < ApplicationController

  require 'widgets.rb'
  include WidgetHelper

  def widget

    render 'widgets/' + params[:widget] + '/_' + params[:view], :layout => false

  end

end