class AddAustinSeeDoPage < ActiveRecord::Migration
  def self.up
    p = Page.create(:url_name => "things_to_do", :wedding_id => 1, :title => "Things To Do", :navigation_order => 9, :class_name => "things_to_do", :show_page => true)
    texas = State.first

    wg = WidgetGroup.create(:title => "Food", :type_id => WidgetGroup::TYPE_ACCORDION)

    #RUDYS ===============================
    w1 = WidgetInformation.create(:tab_name => "Rudy's BBQ",
                                  :title => "Rudy's BBQ")

    rudys = Location.create(:name => "Rudy's BBQ",
                            :address1 => "2451 South Capital of Texas Highway",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.244908,
                            :longitude => -97.802283
                          )

    WidgetContent.create(:widget => w1, :content => rudys, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "More Info",
                            :is_internal => false,
                            :url => "http://www.ci.austin.tx.us/austinairport/default.htm")
    
    WidgetContent.create(:widget => w1, :content => l1, :verticle_order => 2)
    
    PageWidget.create(:page_id => p.id, :widget => w1, :verticle_order => 1, :widget_group_id => wg.id)

    #CHUYS ===============================
    w2 = WidgetInformation.create(:tab_name => "Chuy's (Tex-Mex)",
                                  :title => "Chuy's (Tex-Mex)",
                                  :description_content_text => ContentText.create(:text =>"Tex-Mex/Hawaiian overlooking Lake Austin")
                                  )

    chuys = Location.create(:name => "Chuy's (Tex-Mex)",
                            :address1 => "1728 Barton Springs Road",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 20.676479,
                            :longitude => -38.710691
                          )

    WidgetContent.create(:widget => w2, :content => chuys, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "Tex-Mex/Hawaiian overlooking Lake Austin",
                            :is_internal => false,
                            :url => "http://yelp.com/chuys")
    
    WidgetContent.create(:widget => w1, :content => l1, :verticle_order => 2)

    PageWidget.create(:page_id => p.id, :widget => w2, :verticle_order => 2, :widget_group_id => wg.id)

    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w2)


    #Hula Hut ===============================
    w3 = WidgetInformation.create(:tab_name => "Hula Hut",
                                  :title => "Hula Hut"
                                  )

    hula = Location.create(:name => "Hula Hut",
                            :address1 => "3825 Lake Austin Boulevard",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.294587,
                            :longitude => -97.783622
                          )

    WidgetContent.create(:widget => w3, :content => hula, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "Yelp Reivews",
                            :is_internal => false,
                            :url => "http://www.yelp.com/biz/hula-hut-austin")
    
    WidgetContent.create(:widget => w3, :content => l1, :verticle_order => 2)

    PageWidget.create(:page_id => p.id, :widget => w3, :verticle_order => 3, :widget_group_id => wg.id)

    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w3)



    #Texas Chili Parlor ===============================
    w4 = WidgetInformation.create(:tab_name => "Texas Chili Parlor",
                                  :title => "Texas Chili Parlor"
                                  )

    chili = Location.create(:name => "Texas Chili Parlor",
                            :address1 => "1409 Lavaca Street",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.276890,
                            :longitude => -97.742350
                          )

    WidgetContent.create(:widget => w4, :content => chili, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "Yelp Reivews",
                            :is_internal => false,
                            :url => "http://www.yelp.com/biz/texas-chili-parlor-austin")
    
    WidgetContent.create(:widget => w4, :content => l1, :verticle_order => 2)

    PageWidget.create(:page_id => p.id, :widget => w4, :verticle_order => 4, :widget_group_id => wg.id)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w4)
    
    
    
    #Trudy's Chili Parlor ===============================
    w5 = WidgetInformation.create(:tab_name => "Trudy's",
                                  :title => "Trudy's"
                                  )

    trudys = Location.create(:name => "Trudy's",
                            :address1 => "8820 Burnet Road",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.371465,
                            :longitude => -97.726939
                          )

    WidgetContent.create(:widget => w5, :content => trudys, :verticle_order => 1)

    PageWidget.create(:page_id => p.id, :widget => w5, :verticle_order => 5, :widget_group_id => wg.id)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w5)
    
    
    #Juan in a Million ===============================
    w6 = WidgetInformation.create(:tab_name => "Juan in a Million",
                                  :title => "Juan in a Million",
                                  :description_content_text => ContentText.create(:text =>"best breakfast tacos")
                                  )

    juan = Location.create(:name => "Juan in a Million",
                            :address1 => "2300 East Cesar Chavez Street",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.255409,
                            :longitude => -97.719382
                          )

    WidgetContent.create(:widget => w6, :content => juan, :verticle_order => 1)
    
    PageWidget.create(:page_id => p.id, :widget => w6, :verticle_order => 6, :widget_group_id => wg.id)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w6)
    
    
    #Amy's Ice Cream ===============================
    w7 = WidgetInformation.create(:tab_name => "Amy's Ice Cream",
                                  :title => "Amy's Ice Cream",
                                  :description_content_text => ContentText.create(:text =>"Famous for their Mexican Vanilla flavor")
                                  )

    amys = Location.create(:name => "Amy's Ice Cream",
                            :address1 => "3500 Guadalupe Street",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.301307,
                            :longitude => -97.739183
                          )

    WidgetContent.create(:widget => w7, :content => amys, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "Visit Website",
                            :is_internal => false,
                            :url => "http://www.amysicecreams.com/2.0/#/home")
    
    WidgetContent.create(:widget => w7, :content => l1, :verticle_order => 2)

    PageWidget.create(:page_id => p.id, :widget => w7, :verticle_order => 7, :widget_group_id => wg.id)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w7)

    #Momoko's ===============================
    w8 = WidgetInformation.create(:tab_name => "Momoko's",
                                  :title => "Momoko's",
                                  :description_content_text => ContentText.create(:text =>"Bubble tea")
                                  )

    momokos = Location.create(:name => "Momoko's",
                            :address1 => "705 W 24th",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.288070,
                            :longitude => -97.744829
                          )

    WidgetContent.create(:widget => w8, :content => momokos, :verticle_order => 1)
    
    l1 = ContentLink.create(:name => "Yelp Reviews",
                            :is_internal => false,
                            :url => "ttp://www.amysicecreams.com/2.0/#/home")
    
    WidgetContent.create(:widget => w8, :content => l1, :verticle_order => 2)

    PageWidget.create(:page_id => p.id, :widget => w8, :verticle_order => 8, :widget_group_id => wg.id)
    WidgetGroupWidget.create(:widget_group_id => wg.id, :widget => w8)
  end

  def self.down
  end
end
