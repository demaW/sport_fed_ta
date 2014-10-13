require 'selenium-webdriver'
require '../../lib/driver/driver_type'
class  Driver

  @@driver = DriverType.new.init

  def self.driver
    @@driver
  end


end