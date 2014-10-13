require 'test/unit'
require '../../lib/driver/driver'
require '../../lib/driver/properties'
class BaseTest < Test::Unit::TestCase
  @@base_url = Properties.new.get_properties('url')

   def setup
     puts 'Start set up'
     Driver.driver.get @@base_url

   end

   def teardown
    # Driver.driver.close
   end


end