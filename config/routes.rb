Prototype::Application.routes.draw do

  resources :pages, :only => [:show]
  resources :rsvps, :only => [:show, :create]
  
  match "example/:action(/:context)(/:view)", :controller => "example"
  match "proxy", :controller => "proxy"
  match "prototype/:page(/:user)", :controller => "prototype", :action => "display"
  match "ui/:action/:widget(/:view)", :controller => "example"

  root :to => "prototype", :controller => "prototype", :page => "start", :user => "new", :action => "display"

end
