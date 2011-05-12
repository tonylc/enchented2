class PagesController < ApplicationController

  before_filter :find_wedding
  
  def show
    @page = Page.find(params[:id])
    
    respond_to do |format|

      format.html{
        
      }
      format.json {
        render :json => page.to_json(:except => [:is_locked], 
                                     :include => {:page_widgets => 
                                       {:include => {:widget => 
                                           {:include => :location}
                                         }
                                       }
                                     }
                                     )
      }
    end
  end

  def rsvp
    @rsvp = Rsvp.new
  end

  def create_rsvp

  end

  private

  def find_wedding
    @wedding = Wedding.find(params[:wedding_id])
  end
end
