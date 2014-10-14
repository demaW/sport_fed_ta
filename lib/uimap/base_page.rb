require_relative('../../lib/driver/driver_type')
require 'selenium-webdriver'

class BasePage
  attr_accessor :driver
  def initialize
    driver_instance = DriverType.new()
    @driver = driver_instance
  end

end