require_relative('base_page')
require_relative('../../lib/elements/abstract_element')

class HomePageUI < BasePage
  attr_accessor :hash_elements

  def initialize
    @driver = Selenium::WebDriver.for :firefox
#    @driver = super.driver
    @driver.get 'http://www.sport195.com/#'
    @hash_elements = {
        sign_up: {xpath: ".//*[@class='splash']//a[@class='btn btn-danger btn-sign-up']"},
        log_in: {xpath: ".//*[@class='splash']//a[@class='btn btn-primary btn-login']"}
    }
  end

  def init_sign_up
    if @sign_up_button.nil?
      begin
        @sign_up_button = AbstractElement.new(@driver.find_element(@hash_elements[:sign_up]))
      rescue
        return nil
      end
    else
      return @sign_up_button
    end
  end

  def init_log_in
    if @log_in_button.nil?
      begin
        @log_in_button = AbstractElement.new(@driver.find_element(@hash_elements[:log_in]))
      rescue
        return nil
      end
    else
      return @log_in_button
    end
  end

  def click_sign_up
    elem = init_sign_up
    elem.click
  end

  def click_log_in
    element = init_log_in
    element.click
  end

  def exist
    if init_sign_up.nil? || init_log_in.nil?
      return false
    else
      return init_sign_up.present? && init_log_in.present?
    end
  end

end