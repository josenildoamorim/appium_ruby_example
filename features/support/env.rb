require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

# Load the desired configuration from appium.txt, create a driver then
# Add the methods to the world
if ENV['PLATFORM_NAME'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path("../android_appium.txt", __FILE__), verbose: true
elsif ENV['PLATFORM_NAME'] == 'ios'
  caps = Appium.load_appium_txt file: File.expand_path("../ios_appium.txt", __FILE__), verbose: true
else
  raise 'Please try again and provide the platform you want to test'
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
