Prototype::Application.routes.draw do

  post "pages/:wedding_id/create_rsvp", :controller => "pages", :action => "create_rsvp"
  get "pages/:wedding_id/rsvp", :controller => "pages", :action => "rsvp"
  get "pages/:wedding_id/:id(.:format)", :controller => "pages", :action => "show"
  
  match "example/:action(/:context)(/:view)", :controller => "example"
  match "proxy", :controller => "proxy"
  match "prototype/:page(/:user)", :controller => "prototype", :action => "display"
  match "ui/:action/:widget(/:view)", :controller => "example"

  root :to => "prototype", :controller => "prototype", :page => "start", :user => "new", :action => "display"

end
