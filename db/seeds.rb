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
		     :rsvp_message => "Please respond for each guest individually by 6/27. Thanks!",
                     :date => DateTime.parse('2011-08-27 18:30:00'), 
                     :location_id => austin.id
                     )

Domain.create(:wedding_id => tnc.id, :domain => "caroline-and-tony.com")
Domain.create(:wedding_id => tnc.id, :domain => "www.caroline-and-tony.com")

q1 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_RADIO, :question => "Food Preference:", :display_order => 1, :is_required => true)
RsvpOption.create(:rsvp_question_id => q1.id, :option => "BBQ")
RsvpOption.create(:rsvp_question_id => q1.id, :option => "Vegetarian")

q2 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_TEXT_FIELD, :question => "Have you booked accommodations for your stay? If so, please let us know where:", :display_order => 2, :is_required => false)

q3 = RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_RADIO, :question => "Transportation will be provided to & from the wedding from the Omni Hotel Downtown Austin. Please indicate if you'd like a ride:", :display_order => 3, :is_required => true)
RsvpOption.create(:rsvp_question_id => q3.id, :option => "Yes, I will need a ride")
RsvpOption.create(:rsvp_question_id => q3.id, :option => "No, I will not need a ride")

RsvpQuestion.create(:wedding_id => tnc.id, :html_form_type => RsvpQuestion::TYPE_TEXT, :question => "For more information, visit the Guest & Travel tab.", :display_order => 4)

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
p2 = Page.create(:url_name => "wedding", :wedding_id => tnc.id, :title => "The Wedding", :navigation_order => 2, :is_locked => false)
p3 = Page.create(:url_name => "photos", :wedding_id => tnc.id, :title => "Photos", :navigation_order => 3, :is_locked => false)
p4 = Page.create(:url_name => "guest_and_travel", :wedding_id => tnc.id, :title => "Guest & Travel Information", :navigation_order => 4, :is_locked => false)

w1 = WidgetText.create(:text => <<TEXT
<p>together with their family and friends</p>
<p><strong style="color: #da8b91; font-size: 24px;">Caroline Ryu</strong><br />and<br /><strong style="font-size: 24px;">Tony Chen</strong></p>
<p>invite you to join the celebration<br />of their marriage and new life together</p>
<p><strong>saturday, august 27, 2011</strong><br />at six thirty in the evening</p>
<p><strong>thurman's mansion</strong> at the <strong>salt lick bbq</strong><br /><strong>driftwood, texas</strong></p>
<p>dinner and dancing to follow<br /><strong style="color: #da8b91">please rsvp on this site by june 27</strong></p>
TEXT
)
w2 = WidgetEvent.create(:location_id => salt_lick.id, :title => "The Wedding", 'start_time' => DateTime.parse('2011-08-27 19:00:00'), 'end_time' => DateTime.parse('2011-08-27 23:00:00'))

w3 = WidgetText.create(:text => <<TEXT
<p><strong style="color: #da8b91; font-size: 24px;">Airport</strong></p>
<p><b>Austin-Bergstrom International Airport (AUS)</b>
<p>Website: <a href="http://www.ci.austin.tx.us/austinairport/default.htm">Austin-Bergstrom International Airport</a><br />Approximately 8 miles from downtown Austin</p>
<p><strong style="color: #da8b91; font-size: 24px;">Accommodations</strong></p>
<p><b>Omni Austin Downtown Hotel</b></p>
<p>Website: <a href="http://www.omnihotels.com/FindAHotel/AustinDowntown/GuestRoomsAndSuites.aspx">Omni Austin Downtown Hotel</a></p>
<p>Address: 700 San Jacinto at 8th Street, Austin, Texas 78701<br />Phone: (512) 476-3700<br />There is a special wedding block set up at the Omni for $139/night over the wedding weekend.  For reservations, please call and ask for the "C & T wedding block rate.”  Transportation to/from the wedding will also take place from this hotel.</p>
<p><strong style="color: #da8b91; font-size: 24px;">Transportation</strong></p>
<p><b>Austin Charter Services Shuttle Bus</b></p>
<p>We have coordinated 45-passenger buses for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers.  Pick-up and drop-off will be from the Omni Austin Downtown Hotel.  <b>Please RSVP below by 6/27</b> if you will be taking the shuttle so we can make sure you have a ride!</p>
<p>Pick-up time: 5:45pm<br />Drop-off time: 11:00pm</p>
TEXT
)


PageWidget.create(:page_id => p1.id, :widget => w1, :verticle_order => 1)
PageWidget.create(:page_id => p4.id, :widget => w3, :verticle_order => 1)
