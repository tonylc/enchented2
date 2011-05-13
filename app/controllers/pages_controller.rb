class PagesController < ApplicationController
  
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

end
