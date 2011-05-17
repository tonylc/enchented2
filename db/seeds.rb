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
                     :location_id => austin.id
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

RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_TEXT, :question => "For more information, please visit the Guest & Travel tab.", :display_order => 4)

caroline = User.create(:first_name => "Caroline",
                       :last_name => "Ryu", 
                       :wedding_id => tnc.id, 
                       :role_id => User::ROLE_BRIDE,
                       :facebook_id => 18800629
                       )

tony = User.create(:first_name => "Tony", 
                   :last_name => "Chen", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_GROOM,
                   :facebook_id => 684296566
                   )

lijen = User.create(:first_name => "Lijen", 
                   :last_name => "Tan", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_BEST_MAN,
                   :facebook_id => 717411026
                   )

nelly = User.create(:first_name => "Chris", 
                   :last_name => "Nelson", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_GROOMSMAN,
                   :facebook_id => 504615468
                   )

james = User.create(:first_name => "James", 
                   :last_name => "Lee", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_GROOMSMAN,
                   :facebook_id => 1218821
                   )

norman = User.create(:first_name => "Norman",
                   :last_name => "Hsieh", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_GROOMSMAN,
                   :facebook_id => 6701208
                   )

collin = User.create(:first_name => "Collin",
                   :last_name => "Kim", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_MAID_OF_HONOR,
                   :facebook_id => 7924545
                   )

steph = User.create(:first_name => "Stephanie",
                   :last_name => "Le", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_BRIDESMAID,
                   :facebook_id => 1204530
                   )

katheryn = User.create(:first_name => "Kathryn",
                   :last_name => "Chin", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_BRIDESMAID,
                   :facebook_id => 1226209
                   )

rachel = User.create(:first_name => "Rachel",
                   :last_name => "Wei", 
                   :wedding_id => tnc.id, 
                   :role_id => User::ROLE_BRIDESMAID,
                   :facebook_id => 219711
                   )

p1 = Page.create(:url_name => "invitation", :wedding_id => tnc.id, :title => "Invitation", :navigation_order => 1, :is_locked => true, :is_home => true)
#p2 = Page.create(:url_name => "wedding", :wedding_id => tnc.id, :title => "The Wedding", :navigation_order => 2, :is_locked => false)
#p3 = Page.create(:url_name => "photos", :wedding_id => tnc.id, :title => "Photos", :navigation_order => 3, :is_locked => false)
p4 = Page.create(:url_name => "guest_and_travel", :wedding_id => tnc.id, :title => "Guest & Travel Information", :navigation_order => 4, :is_locked => false)

w1 = WidgetText.create(:text => <<TEXT
<p>together with their family and friends</p>
<p><strong style="color: #da8b91; font-size: 24px;">Caroline Ryu</strong><br />and<br /><strong style="font-size: 24px;">Tony Chen</strong></p>
<p>invite you to join the celebration<br />of their love and new life together</p>
<p><strong>saturday, august 27, 2011</strong><br />at six-thirty in the evening</p>
<p><strong>thurman's mansion</strong> at the <strong>salt lick bbq</strong><br /><strong>driftwood, texas</strong></p>
<p>dinner and dancing to follow<br /><strong style="color: #da8b91">please rsvp on this site by june 27</strong></p>
TEXT
)

w2 = WidgetEvent.create(:location_id => salt_lick.id, :title => "Caroline &amp; Tony's Wedding", 'start_time' => DateTime.parse('2011-08-27 19:00:00'), 'end_time' => DateTime.parse('2011-08-27 23:00:00'), :is_rsvp_event => true)

w3 = WidgetText.create(:text => <<TEXT
<p><strong style="color: #da8b91; font-size: 24px;">Airport</strong></p>
<p><b><a target=_blank href="http://www.ci.austin.tx.us/austinairport/default.htm">Austin-Bergstrom International Airport (AUS)</a></b>
<br>Approximately 8 miles from downtown Austin</p>
TEXT
)

w4 = WidgetText.create(:text => <<TEXT
<p><strong style="color: #da8b91; font-size: 24px;">Accommodations</strong>
<p><b><a target='_blank' href="http://www.omnihotels.com/FindAHotel/AustinDowntown/GuestRoomsAndSuites.aspx">Omni Austin Downtown Hotel</a></b>
<br>700 San Jacinto at 8th Street, Austin, TX<br>Reservations: (512) 476-3700
<p>There is a wedding block set up at with discounted rates for the weekend. Please call and ask for the "Ryu / Chen" wedding block rate.<br><b>Must reserve by 8/1/11.</b>
<p>Special rate: $139/night for standard guestroom with a King or two Double bed accomodations.
TEXT
)

w5 = WidgetText.create(:text => <<TEXT
<p><strong style="color: #da8b91; font-size: 24px;">Transportation</strong></p>
<p>We have coordinated 45-passenger shuttles for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers.  Pick-up and drop-off will be from the Omni Austin Downtown Hotel.  <b>Please RSVP below by 6/27</b> if you will be taking the shuttle so we can make sure you have a ride!</p>
<p>Pick-up time: 5:45pm<br>Drop-off times: 10:00pm and 11:00 pm</p>
TEXT
)


PageWidget.create(:page_id => p1.id, :widget => w1, :verticle_order => 1)
#PageWidget.create(:page_id => p2.id, :widget => w2, :verticle_order => 1)
PageWidget.create(:page_id => p4.id, :widget => w3, :verticle_order => 1)
PageWidget.create(:page_id => p4.id, :widget => w4, :verticle_order => 2)
PageWidget.create(:page_id => p4.id, :widget => w5, :verticle_order => 3)
