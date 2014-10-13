require_relative('base_page')

class HomePageUI < BasePage
  attr_accessor :hash_elements
  def initialize
    @driver = super.driver
    @driver.get 'http://www.sport195.com/#'
    @hash_elements = {
        sign_up: {xpath: ".//*[@class='splash']//a[@class='btn btn-danger btn-sign-up']"},
        log_in: {xpath: ".//*[@class='splash']//a[@class='btn btn-primary btn-login']"}
    }
  end

  def click_sign_up
    element = @driver.find_element(@hash_elements[:sign_up])
    element.click
  end

  def click_log_in
    element = @driver.find_element(@hash_elements[:log_in])
    element.click
  end

  def exist
   element = @driver.find_element(@hash_elements[:sign_up])
   return exist_base(element)
  end

end