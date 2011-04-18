Enchented::Application.routes.draw do
  match 'about-us' => 'static#about', :as => :about_us
  match 'event-details' => 'static#event_details', :as => :event_details
  match 'wedding-party' => 'static#wedding_party', :as => :wedding_party
  match 'register' => 'static#registry', :as => :registry
  root :to => 'static#welcome'
end
