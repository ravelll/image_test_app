# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
ImageTest::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.lolipop.jp",
  :port => 25,
  :domain => "menchikatsu.org",
  :authentication => :plain,
  :user_name => "info",
  :password => "hzNkJXJMl"
}
