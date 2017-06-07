require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

# Load the desired configuration from appium.txt, create a driver then
# Add the methods to the world
caps = { caps: {
  platformName: 'Android',
  deviceName: 'Moto X',
  app: 'apps/TrianguloApp.apk',
  appPackage: 'com.eliasnogueira.trianguloapp'
} }

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
