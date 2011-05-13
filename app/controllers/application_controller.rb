class ApplicationController < ActionController::Base
  
  before_filter :find_wedding

  protect_from_forgery

  private

  def find_wedding
    case self.controller_name
    when 'pages'
      @wedding = Page.find(params[:id]).wedding
    when 'rsvps'
      if self.action_name == "create"
        @wedding = Wedding.find(params[:rsvp][:wedding_id])
      else
        @wedding = Wedding.find(params[:id])
      end
    end
  end

end
