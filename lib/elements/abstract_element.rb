require 'selenium-webdriver'
require_relative '../utils/log'
class AbstractElement < Selenium::WebDriver::Element
  attr_accessor :is_element_found
  def initialize(driver, element_locator)
    @is_element_found = false
    @driver = driver
    @element = find_element(element_locator)
  end

  def click
    @element.click
    $logger.info "#{__method__} on element"
  end

  def displayed?
    status = @element.displayed?
    $logger.info "element is displayed? :  #{status}"
    return status
  end

  def find_element(element_locator)
    begin
      @is_element_found = true
      return @driver.find_element(element_locator)
    rescue Exception => e
      @is_element_found = false
      $logger.error "#{__method__} method in abstract_element class: Element not found !"
      $logger.error "#{e.message}"
      return nil
    end
  end

end