require 'test/unit'
require_relative '../../lib/driver/properties'
require_relative '../../lib/driver/driver_type'
class BaseTest < Test::Unit::TestCase
  @@base_url = Properties.new.get_properties('url')

   def setup
     $driver = DriverType.new.init
     puts 'Start set up'
     $driver.get @@base_url

   end

   def teardown
     $driver.close
   end


end