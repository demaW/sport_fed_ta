require_relative '../uimap/home_page_ui'
require 'logger'
require_relative '../utils/logger'
class HomePageBO
  def initialize(driver)
    @driver = driver
    @home_page_elements = HomePageUI.new
    $logger.info "#{self.inspect}"
  end

  def check_username
    username  = @driver.find_element(@home_page_elements.hash_elements[:username]).text
  end
end