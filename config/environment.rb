# Load the rails application
require File.expand_path('../application', __FILE__)
require 'sass'
require 'sass/plugin'
# Change Sass assets location
Sass::Plugin.options[:template_location] = './public'
Sass::Plugin.options[:css_location] = './public/prototype/stylesheets'
Sass::Plugin.options[:style] = :compact

# Initialize the rails application
Prototype::Application.initialize!