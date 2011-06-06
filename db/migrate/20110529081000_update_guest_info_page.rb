class UpdateGuestInfoPage < ActiveRecord::Migration
  def self.up
    texas = State.find_by_name("texas")

    page = Page.find_by_url_name("guest_and_travel")
    
    page.page_widgets.each do |page_widget|
      page_widget.widget.destroy
      page_widget.destroy
    end

    wct1 = ContentText.create(:text => "<p>Approximately 8 miles from downtown Austin</p>")
    w1 = WidgetInformation.create(:tab_name => "airport",
                                  :title => "Austin-Bergstrom International Airport (AUS)",
                                  :title_url => "http://www.ci.austin.tx.us/austinairport/default.htm",
                                  :description_content_text_id => wct1.id)

    aus = Location.create(:name => "Austin-Bergstrom International Airport (AUS)",
                          :address1 => "3600 Presidential Blvd.",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78719",
                          :latitude => 30.202495,
                          :longitude => -97.667612
                          )

    WidgetContent.create(:widget => w1, :content => aus, :verticle_order => 1)
    
    more_info = ContentLink.create(:name => "More Info",
                                   :is_internal => false,
                                   :url => "http://www.ci.austin.tx.us/austinairport/default.htm")

    WidgetContent.create(:widget => w1, :content => more_info, :verticle_order => 2)


    wct2 = ContentText.create(:text => <<TEXT
<p>700 San Jacinto at 8th Street, Austin, TX<br />Reservations: (512) 476-3700</p> 
<p>There is a wedding block set up at with discounted rates for the weekend. Please call and ask for the "Ryu/Chen" wedding block or reserve online with Group Code: 13600109405.</p> 
<p><strong>Must reserve by 8/1.</strong></p> 
<p>Special rate: $139/night for standard guestroom with a King or two Double bed accomodations.</p> 
TEXT
)
    w2 = WidgetInformation.create(:tab_name => "accomodations",
                                  :title => "Omni Austin Downtown Hotel",
                                  :title_url => "http://www.omnihotels.com/FindAHotel/AustinDowntown/GuestRoomsAndSuites.aspx",
                                  :description_content_text_id => wct2.id)

    omni = Location.create(:name => "Omni Austin Downtown Hotel",
                           :address1 => "700 San Jacinto at 8th Street",
                           :city => "austin",
                           :state_id => texas.id,
                           :postal_code => "78701",
                           :latitude => 30.268438,
                           :longitude => -97.740127
                           )
    
    WidgetContent.create(:widget => w2, :content => omni, :verticle_order => 1)
    
    reserve = ContentLink.create(:name => "Reserve Online",
                                       :is_internal => false,
                                       :url => "https://ssl.omnihotels.com/Omni?Perseus_state=clear&lang_code=en-us&prop=AUSCTR&group_code=13600109405")

    WidgetContent.create(:widget => w2, :content => reserve, :verticle_order => 2)

    wct3 = ContentText.create(:text => <<TEXT
<p>We have coordinated 45-passenger shuttles for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers.</p>
<p>Pick-up and drop-off will be from the Omni Austin Downtown Hotel. Please RSVP by 6/27 if you will be taking the shuttle so we can make sure you have a ride!</p>
<dl> 
<dt>Pick-up time</dt><dd>5:45pm</dd> 
<dt>Drop-off times</dt><dd>10:00pm and 11:00pm</dd> 
</dl> 
TEXT
)
    
    w3 = WidgetInformation.create(:tab_name => "transportation",
                                  :title => "Transportation",
                                  :description_content_text_id => wct3.id)
    
    salt_lick = Location.find_by_name("Thurman's Mansion at the Salt Lick BBQ")
    
    WidgetContent.create(:widget => w3, :content => omni, :verticle_order => 1)
    WidgetContent.create(:widget => w3, :content => salt_lick, :verticle_order => 2)
    
    rsvp = ContentLink.create(:name => "RSVP for wedding &amp; reception",
                                       :is_internal => true,
                                       :url => "rsvps")

    WidgetContent.create(:widget => w3, :content => rsvp, :verticle_order => 3)

    wg = WidgetGroup.create(:title => "Guest &amp; Travel Information", :type_id => WidgetGroup::TYPE_TABBED)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w1)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w2)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w3)
    
    PageWidget.create(:page_id => page.id, :widget => w1, :verticle_order => 1, :widget_group_id => wg.id)
    PageWidget.create(:page_id => page.id, :widget => w2, :verticle_order => 2, :widget_group_id => wg.id)
    PageWidget.create(:page_id => page.id, :widget => w3, :verticle_order => 3, :widget_group_id => wg.id)
  end

  def self.down
  end
end
