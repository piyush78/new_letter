# Load the Rails application.
require_relative 'application'
require 'whenever/capistrano'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'XXXXXXX',
  :password => 'XXXXXXX',
  :domain => 'localhost',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

set :whenever_command, "bundle exec whenever"
set :whenever_environment, defer { stage }
set :whenever_identifier, defer { "#{User}_#{development}" }
