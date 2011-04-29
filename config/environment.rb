# Load the rails application

require 'bluecloth'

require 'net/http'

require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings[:enable_starttls_auto] = false


# Initialize the rails application
FriLed::Application.initialize!
