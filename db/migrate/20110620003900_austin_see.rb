class AustinSee < ActiveRecord::Migration
  def self.up

    p = Page.find_by_url_name("things_to_do")
    texas = State.first

    wg = WidgetGroup.create(:title => "To Do &amp; See", :type_id => WidgetGroup::TYPE_ACCORDION)

    #Bob Bullock Texas State History Museum ===============================
    w1 = WidgetInformation.create(:tab_name => "Bob Bullock Texas State History Museum",
                                  :title => "Bob Bullock Texas State History Museum"
                                  )

    bob = Location.create(:name => "Bob Bullock Texas State History Museum",
                          :address1 => "1800 N Congress Ave",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.267605,
                          :longitude => -97.742984
                          )

    WidgetContent.create(:widget => w1, :content => bob, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w1, :verticle_order => 1, :widget_group_id => wg.id)

    #Congress Avenue Bridge / Austin Bats ===============================
    w2 = WidgetInformation.create(:tab_name => "Congress Avenue Bridge / Austin Bats",
                                  :title => "Congress Avenue Bridge / Austin Bats",
                                  :description_content_text => ContentText.create(:text =>"Gather around sunset and watch 1.5 million bats fly out from under the bridge and down the Colorado River&mdash;it will be &ldquo;bat season&rdquo; end of August!")
                                  )

    congress = Location.create(:name => "Congress Avenue Bridge / Austin Bats",
                          :address1 => "Barton Springs Rd. &amp; Congress Ave.",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.25935,
                          :longitude => -97.746049
                          )

    WidgetContent.create(:widget => w2, :content => bob, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w2, :verticle_order => 2, :widget_group_id => wg.id)
    

    #State Capitol Building ===============================
    w3 = WidgetInformation.create(:tab_name => "State Capitol Building",
                                  :title => "State Capitol Building",
                                  :description_content_text => ContentText.create(:text =>"The largest in the United States")
                                  )

    capitol = Location.create(:name => "State Capitol Building",
                          :address1 => "1100 Congress Avenue",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.275486,
                          :longitude => -97.740233
                          )

    WidgetContent.create(:widget => w3, :content => congress, :verticle_order => 1)

    PageWidget.create(:page_id => p.id, :widget => w3, :verticle_order => 3, :widget_group_id => wg.id)


    #State Capitol Building ===============================
    w3 = WidgetInformation.create(:tab_name => "State Capitol Building",
                                  :title => "State Capitol Building",
                                  :description_content_text => ContentText.create(:text =>"The largest in the United States")
                                  )

    capitol = Location.create(:name => "State Capitol Building",
                          :address1 => "1100 Congress Avenue",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.275486,
                          :longitude => -97.740233
                          )

    WidgetContent.create(:widget => w3, :content => congress, :verticle_order => 1)

    l1 = ContentLink.create(:name => "More Info",
                            :is_internal => false,
                            :url => "http://www.tspb.state.tx.us/spb/capitol/texcap.htm")
    
    WidgetContent.create(:widget => w3, :content => l1, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w3, :verticle_order => 3, :widget_group_id => wg.id)


    #Blanton Museum of Art ===============================
    w4 = WidgetInformation.create(:tab_name => "Blanton Museum of Art",
                                  :title => "Blanton Museum of Art"
                                  )

    blanton = Location.create(:name => "Blanton Museum of Art",
                          :address1 => "200 East Martin Lutherking Blvd.",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.280297,
                          :longitude => -97.736655
                          )

                          WidgetContent.create(:widget => w4, :content => blanton, :verticle_order => 1)

    l1 = ContentLink.create(:name => "Visit Website",
                            :is_internal => false,
                            :url => "http://www.blantonmuseum.org/")
    
    WidgetContent.create(:widget => w4, :content => l1, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w4, :verticle_order => 4, :widget_group_id => wg.id)

    
    #Lake Travis ===============================
    w5 = WidgetInformation.create(:tab_name => "Lake Travis",
                                  :title => "Lake Travis",
                                  :description_content_text => ContentText.create(:text =>"You can rent two-story party boats, jet skis, etc.")
                                  )

    travis = Location.create(:name => "Lake Travis",
                          :address1 => "Lake Travis",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.426985,
                          :longitude => -97.923529
                          )

    WidgetContent.create(:widget => w5, :content => travis, :verticle_order => 1)

    l1 = ContentLink.create(:name => "Just for Fun Watercraft Rental",
                            :is_internal => false,
                            :url => "http://www.justforfun.net/")
                            
    
    l2 = ContentLink.create(:name => "Aguaholic Watercraft Rental",
                            :is_internal => false,
                            :url => "http://www.aquaholic.org/pricing.htm")

                   
    
    WidgetContent.create(:widget => w5, :content => l1, :verticle_order => 1)
    WidgetContent.create(:widget => w5, :content => l2, :verticle_order => 2)
        
    PageWidget.create(:page_id => p.id, :widget => w5, :verticle_order => 5, :widget_group_id => wg.id)
    
    
    #Guadalupe River ===============================
    w6 = WidgetInformation.create(:tab_name => "Guadalupe River",
                                  :title => "Guadalupe River",
                                  :description_content_text => ContentText.create(:text =>"Kayak, rent tubes, BYOB, and float down the rivers")
                                  )

    river = Location.create(:name => "Guadalupe River",
                          :address1 => "Guadalupe River",
                          :city => "canyon lake",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 29.84214,
                          :longitude => -98.170979
                          )

    WidgetContent.create(:widget => w6, :content => river, :verticle_order => 1)

    l1 = ContentLink.create(:name => "More Info",
                            :is_internal => false,
                            :url => "http://www.texasoutside.com/guadaluperiver.html")
                            
    WidgetContent.create(:widget => w6, :content => l1, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w6, :verticle_order => 6, :widget_group_id => wg.id)
    
    
    
    #Comal River ===============================
    w7 = WidgetInformation.create(:tab_name => "Comal River",
                                  :title => "Comal River"
                                  )

    comal = Location.create(:name => "Comal River",
                          :address1 => "Comal River",
                          :city => "new braunfels",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 29.70377,
                          :longitude => -98.123384
                          )

    WidgetContent.create(:widget => w7, :content => comal, :verticle_order => 1)

    l1 = ContentLink.create(:name => "Texas Tubes",
                            :is_internal => false,
                            :url => "http://www.texastubes.com/")
                            
    WidgetContent.create(:widget => w7, :content => l1, :verticle_order => 1)
        
    PageWidget.create(:page_id => p.id, :widget => w7, :verticle_order => 7, :widget_group_id => wg.id)
    
    
    #Mount Bonnell ===============================
    w8 = WidgetInformation.create(:tab_name => "Mount Bonnell",
                                  :title => "Mount Bonnell",
                                  :description_content_text => ContentText.create(:text =>"The highest point in Austin at 775 feet")
                                  )

    bonnell = Location.create(:name => "Mount Bonnell",
                          :address1 => "Mount Bonnell",
                          :city => "austin",
                          :state_id => texas.id,
                          :postal_code => "78746",
                          :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                          :latitude => 30.32371,
                          :longitude => -97.772954
                          )

    WidgetContent.create(:widget => w8, :content => bonnell, :verticle_order => 1)

    l1 = ContentLink.create(:name => "More Info",
                            :is_internal => false,
                            :url => "http://www.austinexplorer.com/Locations/ShowLocation.aspx?LocationID=17")
                            
    WidgetContent.create(:widget => w8, :content => l1, :verticle_order => 1)
        
      PageWidget.create(:page_id => p.id, :widget => w8, :verticle_order => 8, :widget_group_id => wg.id)
    
    
    
    # SHOPPING ===============================
    
        wg = WidgetGroup.create(:title => "Shopping", :type_id => WidgetGroup::TYPE_ACCORDION)
    
    
     #The Domain Mall ===============================
     w9 = WidgetInformation.create(:tab_name => "The Domain Mall",
                                    :title => "The Domain Mall"
                                    )

      domain = Location.create(:name => "The Domain Mall",
                            :address1 => "11410 Century Oaks Terrace",
                            :city => "austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.400802,
                            :longitude => -97.726758
                            )

      WidgetContent.create(:widget => w9, :content => domain, :verticle_order => 1)

      l1 = ContentLink.create(:name => "Visit Website",
                              :is_internal => false,
                              :url => "http://www.thedomainaustin.com/")

      WidgetContent.create(:widget => w9, :content => l1, :verticle_order => 1)

      PageWidget.create(:page_id => p.id, :widget => w9, :verticle_order => 9, :widget_group_id => wg.id)
    
    
    #Round Rock Premium Outlets ===============================
    w10 = WidgetInformation.create(:tab_name => "Round Rock Premium Outlets",
                                   :title => "Round Rock Premium Outlets"
                                   )

     rock = Location.create(:name => "Round Rock Premium Outlets",
                           :address1 => "4401 North IH-35",
                           :city => "round rock",
                           :state_id => texas.id,
                           :postal_code => "78746",
                           :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                           :latitude => 30.565685,
                           :longitude => -97.692006
                           )

     WidgetContent.create(:widget => w10, :content => rock, :verticle_order => 1)

     l1 = ContentLink.create(:name => "Visit Website",
                             :is_internal => false,
                             :url => "http://www.premiumoutlets.com/outlets/outlet.asp?id=73")

     WidgetContent.create(:widget => w10, :content => l1, :verticle_order => 1)

     PageWidget.create(:page_id => p.id, :widget => w10, :verticle_order => 10, :widget_group_id => wg.id)
    

     #Downtown Austin Shops &amp; Boutiques ===============================
     w11 = WidgetInformation.create(:tab_name => "Downtown Austin Shops &amp; Boutiques",
                                    :title => "Downtown Austin Shops &amp; Boutiques"
                                    )

      downtown = Location.create(:name => "Downtown Austin Shops &amp; Boutiques",
                            :address1 => "4401 North IH-35",
                            :city => "owntown austin",
                            :state_id => texas.id,
                            :postal_code => "78746",
                            :map_url => "http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=1728+Barton+Springs+Road,+Austin+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFfbJzQEdlj8s-ilpgNxXPbVEhjFfybkIb9AqIA&mra=ls&sll=37.0625,-95.677068&sspn=48.688845,56.425781&ie=UTF8&t=h&z=15",
                            :latitude => 30.26762,
                            :longitude => -97.743889
                            )

      WidgetContent.create(:widget => w11, :content => downtown, :verticle_order => 1)

      l1 = ContentLink.create(:name => "Visit Website",
                              :is_internal => false,
                              :url => "http://www.downtownaustin.com/directory/Retail")

      WidgetContent.create(:widget => w11, :content => l1, :verticle_order => 1)

      PageWidget.create(:page_id => p.id, :widget => w11, :verticle_order => 11, :widget_group_id => wg.id)

  end

  def self.down
  end
end
