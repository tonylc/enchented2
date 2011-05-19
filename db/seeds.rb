# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Location.destroy_all
Wedding.destroy_all
User.destroy_all
Page.destroy_all
WidgetText.destroy_all
WidgetEvent.destroy_all
PageWidget.destroy_all
Rsvp.destroy_all
RsvpQuestion.destroy_all
RsvpOption.destroy_all
RsvpSelection.destroy_all
Domain.destroy_all

texas = State.create(:name => "texas", :short_name => "TX")

austin = Location.create(:name => "Austin",
                         :address1 => "",
                         :city => "Austin",
                         :state_id => texas.id,
                         :postal_code => "78619",
                         :latitude => 30.131332,
                         :longitude => -98.01355
                         )

salt_lick = Location.create(:name => "Thurman's Mansion",
                            :address1 => "17900 Farm to Market Road 1826",
                            :city => "driftwood",
                            :state_id => texas.id,
                            :postal_code => "78619",
                            :latitude => 30.131332,
                            :longitude => -98.01355
                            )

tnc = Wedding.create(:name => "Caroline &amp; Tony",
                     :name_html => "Caroline <em>&amp;</em> Tony",
		                 :rsvp_message => "Kindly reply for each guest by 6/27/11. Thanks!",
                     :date => DateTime.parse('2011-08-27 18:30:00'),
                     :location_id => austin.id,
		     :bride_first_name => "Caroline",
		     :bride_last_name => "Ryu",
		     :groom_first_name => "Tony",
		     :groom_last_name => "Chen",
		     :ga_tag => <<TEXT
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2311903-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
TEXT
                     )

Domain.create(:wedding_id => tnc.id, :domain => "caroline-and-tony.com")
Domain.create(:wedding_id => tnc.id, :domain => "www.caroline-and-tony.com")

q1 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_RADIO, :question => "Food Preference:", :display_order => 1, :is_required => true)
RsvpOption.create(:rsvp_question_id => q1.id, :option => "BBQ")
RsvpOption.create(:rsvp_question_id => q1.id, :option => "Vegetarian")

q2 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_TEXT_FIELD, :question => "Have you booked accommodations for your stay?<br>If so, please let us know where:", :display_order => 2, :is_required => false)

q3 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_RADIO, :question => "Transportation is provided to/from the wedding at the Omni Austin Downtown Hotel. Please indicate if you'd like a ride:", :display_order => 3, :is_required => true)
RsvpOption.create(:rsvp_question_id => q3.id, :option => "Yes, I'd like a ride")
RsvpOption.create(:rsvp_question_id => q3.id, :option => "No, I will not need a ride")

RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_TEXT, :question => "For more information, visit the Guest & Travel tab.", :display_order => 4)


p0 = Page.create(:url_name => "welcome", :wedding_id => tnc.id, :title => "Welcome", :navigation_order => 1, :is_locked => true, :is_home => true, :class_name => "welcome")
p1 = Page.create(:url_name => "invitation", :wedding_id => tnc.id, :title => "Invitation", :navigation_order => 2, :class_name => "invitation")
p2 = Page.create(:url_name => "about_us", :wedding_id => tnc.id, :title => "About Us", :navigation_order => 3, :class_name => "guest_and_travel", :show_title => false)
p3 = Page.create(:url_name => "photos", :wedding_id => tnc.id, :title => "Photos", :navigation_order => 4, :class_name => "comingsoon", :show_title => false)
p4 = Page.create(:url_name => "wedding_party", :wedding_id => tnc.id, :title => "Wedding Party", :navigation_order => 5, :class_name => "guest_and_travel", :show_title => false)
p5 = Page.create(:url_name => "guest_and_travel", :wedding_id => tnc.id, :title => "Guest & Travel Information", :navigation_order => 6, :class_name => "guest_and_travel", :show_title => false)
p6 = Page.create(:url_name => "events", :wedding_id => tnc.id, :title => "Wedding Events", :navigation_order => 7, :class_name => "comingsoon", :show_title => false)
p7 = Page.create(:url_name => "registry", :wedding_id => tnc.id, :title => "Registry", :navigation_order => 8, :class_name => "registry", :show_title => false)

#invitation
w1 = WidgetText.create(:text => <<TEXT
<p>together with their family and friends</p>
<p><strong style="color: #da8b91; font-size: 24px;">Caroline Ryu</strong><br />and<br /><strong style="font-size: 24px;">Tony Chen</strong></p>
<p>invite you to join the celebration<br />of their love and new life together</p>
<p><strong>saturday, august 27, 2011</strong><br />at six-thirty in the evening</p>
<p><strong>thurman's mansion</strong> at the <strong>salt lick bbq</strong><br /><strong>driftwood, texas</strong></p>
<p>dinner and dancing to follow<br /><strong style="color: #da8b91">please rsvp on this site by june 27</strong></p>
TEXT
)

PageWidget.create(:page_id => p1.id, :widget => w1, :verticle_order => 1)

#events
w2 = WidgetEvent.create(:location_id => salt_lick.id, :title => "Caroline &amp; Tony's Wedding", 'start_time' => DateTime.parse('2011-08-27 19:00:00'), 'end_time' => DateTime.parse('2011-08-27 23:00:00'), :is_rsvp_event => true)

#guest_and_travel
w3 = WidgetText.create(:text => <<TEXT
<h2>Airport</h2>
                <p><a href="http://www.ci.austin.tx.us/austinairport/default.htm" target=_blank>Austin-Bergstrom International Airport (AUS)</a><br />Approximately 8 miles from downtown Austin</p>

                <hr />

                <h2>Accommodations</h2>
                <p><a target='_blank' href="http://www.omnihotels.com/FindAHotel/AustinDowntown/GuestRoomsAndSuites.aspx">Omni Austin Downtown Hotel</a><br />700 San Jacinto at 8th Street, Austin, TX<br />Reservations: (512) 476-3700</p>
                <p>There is a wedding block set up at with discounted rates for the weekend. Please call and ask for the "Ryu/Chen" wedding block or <a href="https://ssl.omnihotels.com/Omni?Perseus_state=clear&lang_code=en-us&prop=AUSCTR&group_code=13600109405" target=_blank>reserve online</a> with Group Code: 13600109405.<strong>Must reserve by 8/1.</strong></p>
                <p>Special rate: $139/night for standard guestroom with a King or two Double bed accomodations.</p>

                <hr />

                <h2>Transportation</h2>
                <p>We have coordinated 45-passenger shuttles for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers. <strong>Pick-up and drop-off will be from the Omni Austin Downtown Hotel.</strong> Please RSVP by 6/27 if you will be taking the shuttle so we can make sure you have a ride!</p>
                <dl>
                    <dt>Pick-up time</dt><dd>5:45pm</dd>
                    <dt>Drop-off times</dt><dd>10:00pm and 11:00pm</dd>
                </dl>
                
                <menu>
                    <li><a href="/rsvps/new">RSVP Now</a></li>
                </menu>
TEXT
)

PageWidget.create(:page_id => p5.id, :widget => w3, :verticle_order => 1)

#photos
w6 = WidgetText.create(:title => "Coming Soon", :text => <<TEXT
<p>please check back soon for more updates</p>
TEXT
)

PageWidget.create(:page_id => p3.id, :widget => w6, :verticle_order => 1)

#events
w7 = WidgetText.create(:title => "Coming Soon", :text => <<TEXT
<p>please check back soon for more updates</p>
TEXT
)

PageWidget.create(:page_id => p6.id, :widget => w7, :verticle_order => 1)


#welcome
w8 = WidgetGallery.create(:title => "Caroline &amp; Tony in New York", :src => "http://caroline-and-tony.com/images/content/welcome.jpg")
w9 = WidgetText.create(:title => "Howdy!", :text => <<TEXT
<p>And welcome to our wedding website! You can find all the details about our upcoming wedding here so please come back often for new information. We are so excited for you to be a part of our big day and can't wait to see y'all there!</p>
<p><strong>Love,<br />Caroline &amp; Tony</strong></p>
TEXT
)


PageWidget.create(:page_id => p0.id, :widget => w8, :verticle_order => 1)
PageWidget.create(:page_id => p0.id, :widget => w9, :verticle_order => 2)


#about us
=begin
w10 = WidgetText.create(:text => <<TEXT
                <h2>Caroline</h2>
                <p>5'2, Brown hair, Brown eyes</p>
                <dl>
                    <dt>Occupation</dt><dd>Advertising Executive</dd>
                    <dt>Hometown</dt><dd>Coppell, TX</dd>
                    <dt>Likes</dt><dd>Cooking, Celebrity gossip, Folding laundry, Dallas sports, Board games, Party planning</dd>
                    <dt>Special Talent</dt><dd>Crying like a baby</dd>
                </dl>

                <hr />

                <h2>Tony</h2>
                <p>5'10, Black hair, brown eyes</p>
                <dl>
                    <dt>Occupation</dt><dd>Software Engineer</dd>
                    <dt>Hometown</dt><dd>Cupertino, CA</dd>
                </dl>
TEXT
)

w11 = WidgetText.create(:title => "How did it all start?", :text => <<TEXT
                <p>One magnificent night out at the Bubble Lounge in San Francisco...</p>
                
                <dl>
                    <dt>Tony</dt><dd>&ldquo;I think you&rsquo;re cute.<br />We should hang out more&rdquo;</dd>
                    <dt>Caroline</dt><dd>&ldquo;Uhhh...&rdquo;</dd>
                    <dt>Tony</dt><dd>&ldquo;Was that a yes or a no?&rdquo;</dd>
                    <dt>Caroline</dt><dd>(Smile) &ldquo;Okay&rdquo;</dd>
                </dl>
                
                <p>That was followed by a romantic first date the next day... with Lijen. We browsed through a contemporary art gallery in Union Square and had dinner at Del Taco.</p>
TEXT
)


PageWidget.create(:page_id => p2.id, :widget => w10, :verticle_order => 1)
PageWidget.create(:page_id => p2.id, :widget => w11, :verticle_order => 2)
=end

w10 = WidgetText.create(:title => "Coming Soon", :text => <<TEXT
<p>please check back soon for more updates</p>
TEXT
)

PageWidget.create(:page_id => p2.id, :widget => w10, :verticle_order => 1)


#registry
=begin
w12 = WidgetText.create(:text => <<TEXT
 <p>We might be living out of our backpacks for the next year, so in lieu of a wedding gift registry, we would appreciate a donation to the<br />Caroline &amp; Tony Stay Alive Fund.</p>
TEXT
)

PageWidget.create(:page_id => p7.id, :widget => w12, :verticle_order => 1)
=end

w12 = WidgetText.create(:title => "Coming Soon", :text => <<TEXT
<p>please check back soon for more updates</p>
TEXT
)

PageWidget.create(:page_id => p7.id, :widget => w12, :verticle_order => 1)


#wedding party
=begin
w13 = WidgetAlbum.create(:service_provider => WeddingAuthentication::SERVICE_PROVIDER_FLICKR, :gallery_id => '72157626752617506')
w14 = WidgetAlbum.create(:service_provider => WeddingAuthentication::SERVICE_PROVIDER_FLICKR, :gallery_id => '72157626752710466')
w15 = WidgetAlbum.create(:service_provider => WeddingAuthentication::SERVICE_PROVIDER_FLICKR, :gallery_id => '72157626752714324')

PageWidget.create(:page_id => p4.id, :widget => w13, :verticle_order => 1)
PageWidget.create(:page_id => p4.id, :widget => w14, :verticle_order => 2)
PageWidget.create(:page_id => p4.id, :widget => w15, :verticle_order => 3)
=end

w13 = WidgetText.create(:title => "Coming Soon", :text => <<TEXT
<p>please check back soon for more updates</p>
TEXT
)

PageWidget.create(:page_id => p4.id, :widget => w13, :verticle_order => 1)
