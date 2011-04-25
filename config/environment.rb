# Load the rails application

require 'bluecloth'

require 'net/http'

require File.expand_path('../application', __FILE__)

# Initialize the rails application
FriLed::Application.initialize!
