require_relative('../../lib/driver/driverbla')
require 'selenium-webdriver'

class BasePage
  attr_accessor :driver
  def initialize()
    driver_instance = Driver.new()
    @driver = driver_instance
  end

end