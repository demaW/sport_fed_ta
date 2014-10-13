require 'selenium-webdriver'
class Driver
  attr_accessor :driver
  def initialize
    @driver = Selenium::WebDriver.for :firefox
  end
end