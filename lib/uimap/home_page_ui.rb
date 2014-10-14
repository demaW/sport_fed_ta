require_relative('base_page')
require_relative('../../lib/elements/abstract_element')
require_relative('../../lib/utils/log')

class HomePageUI < BasePage
  attr_accessor :hash_elements

  def initialize
    @driver = super.init
#    @driver = Selenium::WebDriver.for :firefox
    @driver.get 'http://www.sport195.com/#'
    @hash_elements = {
        sign_up: {xpath: ".//*[@class='splash']//a[@class='btn btn-danger btn-sign-up']"},
        log_in: {xpath: ".//*[@class='splash']//a[@class='btn btn-primary btn-login']"}
    }
  end

  def init_sign_up
    if @sign_up_button.nil?
      @sign_up_button = AbstractElement.new(@driver, @hash_elements[:sign_up])
    end
    return @sign_up_button
  end

  def init_log_in
    if @log_in_button.nil?
      @log_in_button = AbstractElement.new(@driver, @hash_elements[:log_in])
    end
    return @log_in_button
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
    if (init_sign_up.is_element_found && init_log_in.is_element_found)
      return @log_in_button.displayed? && @sign_up_button.displayed?
    else
      return false
    end
  end

end