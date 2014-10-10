require 'selenium-webdriver'
require_relative '../utils/log'
class AbstractElement

  def initialize(element)
   @element = element

  end

  def click
  @element.click
  $logger.info "#{__method__} on element"
  end

end