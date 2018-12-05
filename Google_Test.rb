require 'capybara'
require './Selenium_Firefox.rb'
require './pa11y_dashboard.rb'

session = Capybara::Session.new :selenium_firefox

if (!pa11y_dashboard(session, '5c06557b244f7a3fcbad32a7'))
puts 'fail'
exit -1
else
puts 'success'
exit 0
end
