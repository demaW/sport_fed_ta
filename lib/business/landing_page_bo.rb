require "selenium-webdriver"

require_relative '../uimap/landinng_page_ui'
class LandingPageBO
  def initialize(driver)
    @driver = driver
    @landing_page_elements = LandinngPageUI.new
  end

  def login
    singn_in = @driver.find_element(@landing_page_elements.hashElement[:login_button])
    singn_in.click()
    login_field = @driver.find_element(@landing_page_elements.hashElement[:input_login])
    login_field.send_keys("volodymyrdemchyk@gmail.com")
    pass_field = @driver.find_element(@landing_page_elements.hashElement[:input_password])
    pass_field.send_keys("181992")
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until{@driver.find_element(@landing_page_elements.hashElement[:login_submit])}
    login_submit = @driver.find_element(@landing_page_elements.hashElement[:login_submit])
    login_submit.click
  end
end