Prototype::Application.routes.draw do

  match "example/:action(/:context)(/:view)", :controller => "example"
  match "proxy", :controller => "proxy"
  match "prototype/:page(/:user)", :controller => "prototype", :action => "display"
  match "ui/:action/:widget(/:view)", :controller => "example"

  root :to => "prototype#start"

end