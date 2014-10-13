require_relative('../../lib/driver/driver')
require 'selenium-webdriver'

class BasePage
  attr_accessor :driver
  def initialize()
    driver_instance = Driver.new()
    @driver = driver_instance
  end

end