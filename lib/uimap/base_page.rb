require_relative('../../lib/driver/driver')
require 'selenium-webdriver'

class BasePage
  attr_accessor :driver
  def initialize()
    driver_instance = Driver.new()
    @driver = driver_instance
  end

  def exist_base(element)
    @value = true
    begin
      @identifier_of_page = element.displayed?
      @value = false
    rescue
      if @value
        puts "Element does not exist"
        @value = true
      end
    end

    status = @identifier_of_page
    print "element is displayed? :  "
    puts(status ? 'Yes' : 'No')

    return status
  end

end