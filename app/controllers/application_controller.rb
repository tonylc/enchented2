class ApplicationController < ActionController::Base
  
  before_filter :find_wedding

  protect_from_forgery

  private

  def find_wedding
    if Domain.exists?(:domain => request.host)      
      @wedding = Domain.find_by_domain(request.host).wedding
      @custom_domain = true
    else
      case self.controller_name
      when 'pages'
        @wedding = Page.find(params[:id]).wedding
      when 'rsvps'
        if self.action_name == "create"
          @wedding = Wedding.find(params[:rsvp][:wedding_id])
        else
          @wedding = Wedding.find(params[:wedding_id])
        end
      else
        # hax
        @wedding = Wedding.first
      end

      @custom_domain = false
    end
  end

end
