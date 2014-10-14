require "selenium-webdriver"
require_relative '../../lib/test/base_test'
class LandingPageBO
  def initialize
    @landing_page_elements = LandingPageUI.new
  end

  def login
    sign_in = $driver.find_element(@landing_page_elements.hashElement[:login_button])
    sign_in.click
    login_field = $driver.find_element(@landing_page_elements.hashElement[:input_login])
    login_field.send_keys 'volodymyrdemchyk@gmail.com'
    pass_field = $driver.find_element(@landing_page_elements.hashElement[:input_password])
    pass_field.send_keys '181992'
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until{ $driver.find_element(@landing_page_elements.hashElement[:login_submit])}
    login_submit = $driver.find_element(@landing_page_elements.hashElement[:login_submit])
    login_submit.click
  end
end