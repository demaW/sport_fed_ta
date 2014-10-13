require '../../lib/driver/properties'
class DriverType

  def init
    type = Properties.new.get_properties('driver')
    if type.include? 'chrome'
       file =File.join(File.dirname(File.expand_path(__FILE__)),Properties.new.get_properties('chrome.path'))
      Selenium::WebDriver::Chrome.driver_path=file
       return Selenium::WebDriver.for :chrome
    else
        return Selenium::WebDriver.for :firefox
     end
  end

end