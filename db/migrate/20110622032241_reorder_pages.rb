class ReorderPages < ActiveRecord::Migration
  def self.up
    texas = State.find_by_name("texas")

    Page.find_by_url_name('invitation').update_attribute(:navigation_order, 3)
    Page.find_by_url_name('about_us').update_attribute(:navigation_order, 2)
    Page.find_by_url_name('guest_and_travel').update_attribute(:navigation_order, 7)
    Page.find_by_url_name('events').update_attributes(:navigation_order => 6, :title => "Event Details")

    WidgetEvent.find(2).destroy
    WidgetEvent.find(5).destroy

    PageWidget.find(11).destroy
    PageWidget.find(13).destroy

    w = WidgetEvent.find(4)
    fourth_and_colorado = Location.create(:name => "Colorado St & W 4th St",
                                          :address1 => "Colorado St & W 4th St",
                                          :city => "austin",
                                          :state_id => texas.id,
                                          :postal_code => "78702",
                                          :latitude => 30.266569,
                                          :longitude => -97.744811,
                                          :map_url => "http://maps.google.com/maps?q=4th+and+colorado,+austin,+TX&hl=en&sll=37.0625,-95.677068&sspn=45.197878,93.076172&z=16&iwloc=A"
                                          )

    w.update_attributes(:description => "Immediately following the reception, we will be heading back to downtown Austin to continue the celebration on 4th Street.  Hope to see y'all there!",
                        :location_id => fourth_and_colorado.id)

    w = WidgetInformation.find(3)
    w.description_content_text.update_attribute(:text, <<TEXT
<p>We have coordinated buses for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers.</p>
<p>Pick-up and drop-off will be from the Omni Austin Downtown Hotel. Please RSVP by 6/27 if you will be taking the shuttle so we can make sure you have a ride!</p>
<p>
<b>Pick-up time:</b> 5:30pm<br />
<b>Return times:</b> 10:00pm and 11:00pm<br />
</p>
TEXT
)

    w = WidgetEvent.find(3)
    w.update_attribute(:description, "The outdoor ceremony will be followed by cocktail hour and a bbq dinner reception.")
  end

  def self.down
  end
end
