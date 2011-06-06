class AddEventsPages < ActiveRecord::Migration
  def self.up
    texas = State.find_by_name("texas")

    page = Page.find_by_url_name("events")
    page.show_page = true
    page.class_name = "events"
    page.save
    
    page.page_widgets.each do |page_widget|
      page_widget.widget.destroy
      page_widget.destroy
    end

=begin    
    chuys = Location.create(:name => "Chuy's Tex Mex",
                            :address1 => "1728 Barton Springs Road",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78704",
                            :latitude => 30.263353,
                            :longitude => -97.762819,
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15"
                            )
=end

    w1 = WidgetEvent.create(:title => "rehearsal dinner",
                            :description => "Location TBD",
                            :start_time => DateTime.parse('2011-08-26 19:00:00'),
                            :is_rsvp_event => false)

    salt_lick = Location.find_by_name("Thurman's Mansion")
    salt_lick.name = "Thurman's Mansion at the Salt Lick BBQ"
    salt_lick.address1 = "18300 Farm to Market Road 1826"
    salt_lick.latitude = 30.131695
    salt_lick.longitude = -98.017504
    salt_lick.map_url = "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=18300+Farm+to+Market+Road+1826,+Driftwood,+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFYTEywEdkm4o-im7wzFj5URbhjFy0mcmUBc5uA&mra=ls&sll=30.265628,-97.748365&sspn=0.026131,0.027552&ie=UTF8&t=h&z=11"
    salt_lick.save

    w2 = WidgetEvent.create(:location_id => salt_lick.id, 
                            :title => "wedding &amp; reception",
                            :description => "Ceremony will be followed by cocktail hour and full-dinner reception",
                            :start_time => DateTime.parse('2011-08-27 18:30:00'),
                            :is_rsvp_event => true)

    rsvp = ContentLink.create(:name => "RSVP for wedding &amp; reception",
                              :is_internal => true,
                              :url => "rsvps")

    WidgetContent.create(:widget => w2, :content => rsvp, :verticle_order => 1)

    w3 = WidgetEvent.create(:location_id => nil, 
                            :title => "after party", 
                            :description => "Location TBD",
                            :start_time => DateTime.parse('2011-08-27 23:30:00'),
                            :is_rsvp_event => false)

=begin
    juan = Location.create(:name => "Juan in a Million",
                            :address1 => "2300 Cesar Chavez Street",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78702",
                            :latitude => 30.255297,
                            :longitude => -97.719037,                            
			    :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=2300+East+Cesar+Chavez+Street,+Austin,+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFc2ozQEdeews-im73hW7yrVEhjE8jK_Ovsv-iw&mra=ls&sll=30.20449,-97.876865&sspn=0.418362,0.440826&ie=UTF8&t=h&z=15"
                            )
=end

    w4 = WidgetEvent.create(:title => "sunday brunch", 
                            :description => "Location TBD",
#			    :description => "If you're around, we'd love for you to join us!",
                            :start_time => DateTime.parse('2011-08-28 12:00:00'),
                            :is_rsvp_event => false)

    wg = WidgetGroup.create(:title => "Wedding Events", :type_id => WidgetGroup::TYPE_TABBED)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w1)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w2)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w3)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w4)
    
    PageWidget.create(:page_id => page.id, :widget => w2, :verticle_order => 1, :widget_group_id => wg.id)
    PageWidget.create(:page_id => page.id, :widget => w1, :verticle_order => 2, :widget_group_id => wg.id)
    PageWidget.create(:page_id => page.id, :widget => w3, :verticle_order => 3, :widget_group_id => wg.id)
    PageWidget.create(:page_id => page.id, :widget => w4, :verticle_order => 4, :widget_group_id => wg.id)
  end

  def self.down
  end
end
