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
PageWidget.destroy_all

salt_lick = Location.create(:name => "Salt Lick BBQ/Thurman's Mansion", 
                            :address1 => "18300 Farm to Market Road 1826", 
                            :city => "driftwood",
                            :state => "tx", 
                            :postal_code => "78619",
                            :latitude => 30.131332,
                            :longitude => -98.01355
                            )

tnc = Wedding.create(:name => "The Tawnies Wedding", 
                     :date => DateTime.parse('2011-08-27 19:00:00'), 
                     :location_id => salt_lick.id
                     )

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

p1 = Page.create(:wedding_id => tnc.id, :title => "The Wedding", :order => 1)
p2 = Page.create(:wedding_id => tnc.id, :title => "About Us", :order => 2)
p3 = Page.create(:wedding_id => tnc.id, :title => "Wedding Party", :order => 3)
p4 = Page.create(:wedding_id => tnc.id, :title => "Travel & Accommodations", :order => 4)
p5 = Page.create(:wedding_id => tnc.id, :title => "Things To Do", :order => 5)
p6 = Page.create(:wedding_id => tnc.id, :title => "Photos", :order => 6)

w1 = WidgetText.create(:name => "Hola!", :text => "Como estas?")

PageWidget(:page_id => p1.id, :widget_type => "WidgetText", :widget_id => w1.id)
