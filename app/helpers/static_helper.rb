module StaticHelper
  def site_wrapper(selected=nil)
    links = [[:about, "About Us", about_us_path],
        		 [:event_details, "Event Details", event_details_path],
        		 [:wedding_party, "Wedding Party", wedding_party_path],
        		 [:registry, "Registry", registry_path]]
        		 
    render :layout => "shared/column_nav", :locals => {:selected => selected, :links => links} do
      yield
    end
  end
end
