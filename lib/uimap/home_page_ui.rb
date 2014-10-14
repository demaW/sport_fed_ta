require_relative'base_page'
require_relative'../../lib/elements/abstract_element'
require_relative'../../lib/utils/log'
require_relative '../../lib/test/base_test'

class HomePageUI < BasePage
  attr_accessor :hash_elements

  def initialize
    @hash_elements = {
        sign_up: {xpath: ".//*[@class='splash']//a[@class='btn btn-danger btn-sign-up']"},
        log_in: {xpath: ".//*[@class='splash']//a[@class='btn btn-primary btn-login']"},
        sign_up_today_fans: {xpath: ".//*[contains(@class, 'btn-splash-fans')]"},
        sign_up_today_athlete: {xpath: ".//*[contains(@class, 'btn-splash-athlete')]"},
        sign_up_today_org: {xpath: ".//*[contains(@class, 'btn-splash-org')]"}
    }
  end

  def init_sign_up
    if @sign_up_button.nil?
      @sign_up_button = AbstractElement.new($driver, @hash_elements[:sign_up])
    end
    return @sign_up_button
  end

  def init_log_in
    if @log_in_button.nil?
      @log_in_button = AbstractElement.new($driver, @hash_elements[:log_in])
    end
    return @log_in_button
  end

  def init_sign_up_today_fans
    if @sign_up_today_fans.nil?
      @sign_up_today_fans = AbstractElement.new($driver, @hash_elements[:sign_up_today_fans])
    end
    return @sign_up_today_fans
  end

  def init_sign_up_today_athlete
    if @sign_up_today_athlete.nil?
      @sign_up_today_athlete = AbstractElement.new($driver, @hash_elements[:sign_up_today_athlete])
    end
    return @sign_up_today_athlete
  end

  def init_sign_up_today_org
    if @sign_up_today_org.nil?
      @sign_up_today_org = AbstractElement.new($driver, @hash_elements[:sign_up_today_org])
    end
    return @sign_up_today_org
  end

  def click_sign_up
    element = init_sign_up
    element.click
  end

  def click_log_in
    element = init_log_in
    element.click
  end

  def click_sign_up_today_fans
    element = init_sign_up_today_fans
    element.click
  end

  def click_sign_up_today_athlete
    element = init_sign_up_today_athlete
    element.click
  end

  def click_sign_up_today_org
    element = init_sign_up_today_org
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